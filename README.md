# Test log [windows]

## More info and test log [ubuntu] in Github.Actions: [![statusbadge](../../actions/workflows/buildtest.yaml/badge.svg?branch=main&event=pull_request)](../../actions/workflows/buildtest.yaml)
        
### Compile failed (build log):
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