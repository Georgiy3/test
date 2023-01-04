# Test log [windows]

## More info and test log [ubuntu] in Github.Actions: [![statusbadge](../../actions/workflows/buildtest.yaml/badge.svg?branch=main&event=pull_request)](../../actions/workflows/buildtest.yaml)
Build log (can be empty):
```
D:\a\test\test\test_data\hard.cpp:71:10: warning: initialization clause of OpenMP for loop is not in canonical form ('var = init' or 'T var = init') [-Wopenmp-loop-form]
    for (int i(0); i < size; ++i) {
         ^~~~~~~~~
D:\a\test\test\test_data\hard.cpp:79:10: warning: initialization clause of OpenMP for loop is not in canonical form ('var = init' or 'T var = init') [-Wopenmp-loop-form]
    for (int i(0); i < COUNT_LIGHT; ++i) {
         ^~~~~~~~~
D:\a\test\test\test_data\hard.cpp:95:10: warning: initialization clause of OpenMP for loop is not in canonical form ('var = init' or 'T var = init') [-Wopenmp-loop-form]
    for (int i(0); i < COUNT_LIGHT - 3; ++i)
         ^~~~~~~~~
3 warnings generated.

```
Stdout+stderr (./omp4 0 in.pgm out0.pgm):
```
OK [program completed with code 0]
    [STDERR]:  
    [STDOUT]: Time (0 thread(s)): 13.2972 ms
71 253 254

```
     
Stdout+stderr (./omp4 -1 in.pgm out-1.pgm):
```
OK [program completed with code 0]
    [STDERR]:  
    [STDOUT]: Time (-1 thread(s)): 4.4935 ms
71 253 254

```
Input image:

![Input image](test_data/in.png?sanitize=true&raw=true)

Output image 0:

![Output image 0](test_data/out0.pgm.png?sanitize=true&raw=true)
Output image -1:

![Output image -1](test_data/out-1.pgm.png?sanitize=true&raw=true)