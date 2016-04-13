# User Story 2

## Valid Account Numbers `Vect 9 (Fin 10)` compile when passed to `build`:

```
*UserStory2> build validAccountNumbers2
AC [FZ,
    FZ,
    FZ,
    FZ,
    FZ,
    FZ,
    FZ,
    FS (FS (FS (FS (FS FZ)))),
    FS (FS (FS (FS (FS FZ))))] : AccountNumber [FZ,
                                                FZ,
                                                FZ,
                                                FZ,
                                                FZ,
                                                FZ,
                                                FZ,
                                                FS (FS (FS (FS (FS FZ)))),
                                                FS (FS (FS (FS (FS FZ))))]

*UserStory2> build validAccountNumbers
AC [FZ,
    FZ,
    FZ,
    FZ,
    FZ,
    FZ,
    FZ,
    FZ,
    FS (FS (FS (FS (FS FZ))))] : AccountNumber [FZ,
                                                FZ,
                                                FZ,
                                                FZ,
                                                FZ,
                                                FZ,
                                                FZ,
                                                FZ,
                                                FS (FS (FS (FS (FS FZ))))]
```

## Testing Invalid Account Numbers

```
*UserStory2> build invalidAccountNumbers
(input):1:7:When checking argument prf to function Main.build:
        Can't find a value of type
                1 = 0
*UserStory2> build invalidAccountNumbers2
(input):1:7:When checking argument prf to function Main.build:
        Can't find a value of type
                4 = 0
```

## Credit and thanks to the following StackOverflow answers

* http://stackoverflow.com/a/36566601/409976
* http://stackoverflow.com/questions/36539019/helper-function-to-determine-if-nat-mod-5-0
