#include <iostream>
#include <omp.h>
#include <sstream>
#include <fstream>
#include <cstring>

using namespace std;

const int COUNT_LIGHT = 256;
const int CHUNK_SIZE = 2;

void otsu(unsigned char* image, int size, int res[3]) {
    int* hist = new int[COUNT_LIGHT];
    
    for (int i(0); i < COUNT_LIGHT; ++i) hist[i] = 0;
    for (int i(0); i < size; ++i) ++(hist[image[i]]);
    
    double** sigma = new double*[COUNT_LIGHT];
    for (int i(0); i < COUNT_LIGHT; ++i) {
        sigma[i] = new double[COUNT_LIGHT - i];
        sigma[i][0] = i;
        double u((double)i * hist[i] / size);
        double q((double)hist[i] / size);
        for (int j(1); j < COUNT_LIGHT - i; ++j) {
            q += (double)hist[j + i] / size;
            u += (double)(j + i) * hist[j + i] / size;
            sigma[i][j] = u * u / q;
        }
    }
   
    delete[] hist;
    
    double maxSig = -1;
    for (int i(0); i < COUNT_LIGHT - 3; ++i)
        for (int j(i + 1); j < COUNT_LIGHT - 2; ++j)
            for (int k(j + 1); k < COUNT_LIGHT - 1; ++k)
                if (sigma[0][i] + sigma[i + 1][j - i - 1] + sigma[j + 1][k - j - 1] + sigma[k + 1][COUNT_LIGHT - k - 2] > maxSig) {
                    maxSig = sigma[0][i] + sigma[i + 1][j - i - 1] + sigma[j + 1][k - j - 1] + sigma[k + 1][COUNT_LIGHT - k - 2];
                    res[0] = i;
                    res[1] = j;
                    res[2] = k;
                }

    for (int i(0); i < COUNT_LIGHT; ++i) delete[] sigma[i];
    delete[] sigma;
}

int otsu_omp(unsigned char* image, int size, int res[3]) {
    int num_treads=0;

    int* hist = new int[COUNT_LIGHT];
    for (int i(0); i < COUNT_LIGHT; ++i) hist[i] = 0;

#pragma omp parallel
    {
#pragma omp master
        num_treads = omp_get_num_threads();

        int* hist_thread = new int[COUNT_LIGHT];
        for (int i(0); i < COUNT_LIGHT; ++i) hist_thread[i] = 0;

#pragma omp for schedule(static, CHUNK_SIZE)
        for (int i(0); i < size; ++i)
            ++hist_thread[image[i]];

        for (int i(0); i < COUNT_LIGHT; ++i)
#pragma omp atomic
            hist[i] += hist_thread[i];

        delete[] hist_thread; 
    }


    double** sigma = new double* [COUNT_LIGHT];
#pragma omp parallel for schedule(static, CHUNK_SIZE)
    for (int i(0); i < COUNT_LIGHT; ++i) {
        sigma[i] = new double[COUNT_LIGHT - i];
        sigma[i][0] = i;
        double u((double)i * hist[i] / size);
        double q((double)hist[i] / size);
        for (int j(1); j < COUNT_LIGHT - i; ++j) {
            q += (double)hist[j + i] / size;
            u += (double)(j + i) * hist[j + i] / size;
            sigma[i][j] = u * u / q;
        }
    }
    delete[] hist;

    double maxSig = -1;
#pragma omp parallel for schedule(static, CHUNK_SIZE)
    for (int i(0); i < COUNT_LIGHT - 3; ++i)
        for (int j(i + 1); j < COUNT_LIGHT - 2; ++j)
            for (int k(j + 1); k < COUNT_LIGHT - 1; ++k)
                if (sigma[0][i] + sigma[i + 1][j - i - 1] + sigma[j + 1][k - j - 1] + sigma[k + 1][COUNT_LIGHT - k - 2] > maxSig)
#pragma omp critical
                {
                    if (sigma[0][i] + sigma[i + 1][j - i - 1] + sigma[j + 1][k - j - 1] + sigma[k + 1][COUNT_LIGHT - k - 2] > maxSig) {
                        maxSig = sigma[0][i] + sigma[i + 1][j - i - 1] + sigma[j + 1][k - j - 1] + sigma[k + 1][COUNT_LIGHT - k - 2];
                        res[0] = i;
                        res[1] = j;
                        res[2] = k;
                    }
                }
;
    for (int i(0); i < COUNT_LIGHT; ++i) delete[] sigma[i];
    delete[] sigma;
    return num_treads;
}

int main(int count, char** args) {
    if (count < 4) {
        cout << "Not enough arguments";
        return 0;
    }

    int countTread;
    try {
        stringstream ss(args[1]);
        ss >> countTread;
        if (!ss.eof()) throw 0;
    }
    catch (...) {
        cout << "It is impossible to read the number of threads";
        return 0;
    }

    ifstream input(args[2], ios::binary | ios::in);
    if (!input) {
        cout << "File \'" << args[2] << "\' not found";
        return 0;
    }
    int weight;
    int height;
    char ch[3];
    input >> ch[0];
    input >> ch[1];
    ch[2] = 0;
    if (strcmp(ch, "P5")) {
        cout << "Unsupported file format";
        input.close();
        return 0;
    }
    {
        int x;
        try {
            input >> weight >> height >> x;
            input.get();
        }
        catch (...) {
            cout << "Error reading data from a file";
            input.close();
            return 0;
        }
        if (x != 255) {
            cout << "Incorrect file data";
            input.close();
            return 0;
        }
    }

    unsigned char* image = new unsigned char[weight * height];
    try {
        for (int i(0); i < weight * height; ++i)
            input.get(((char*)image)[i]);
    }
    catch (...) {
        cout << "Error reading data from a file";
        input.close();
        delete[] image;
        return 0;
    }
    input.close();
    
    double time(-omp_get_wtime());

    int res[3];
    if (countTread == -1) {
        countTread = 1;
        otsu(image, weight * height, res);
        
    }
    else {
        if(countTread) omp_set_num_threads(countTread);
        countTread = otsu_omp(image, weight * height, res);
    }

    time += omp_get_wtime();
    cout << "Time (" << countTread << " thread(s)): ";
    cout << time * 1000 << " ms\n" << res[0] << ' ' << res[1] << ' ' << res[2] << '\n';
    
    ofstream output(args[3]);
    output << "P5\n" << weight << ' ' << height << "\n255\n";
    for (int i(0); i < weight * height; ++i) {
        if (image[i] <= res[0])
            output << '\0';
        else if (image[i] <= res[1])
            output << (char)84;
        else if (image[i] <= res[2])
            output << (char)170;
        else
            output << (char)255;
    }
    output.close();
}