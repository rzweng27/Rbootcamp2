#9.1.1.0.1 Exercise "What happens when the length of the longer vector is not a multiple of that of the shorter?"
x <- c(1,2,3)
y <- c(10,20,30,40,50,60,70)
x+y
#R output "Warning message:In x + y : longer object length is not a multiple of shorter object length"

#Section 9.1.2.0.1 Exercise
v<-seq(1,13,4)
w<-seq(5,1,-0.2)

#9.1.2.0.2 Exercise "What happens when to is less than from in seq? What result does 3:1 give? This is one of the first “gotchas” R newbies run into."
3:1
#R output
[1] 3 2 1

#9.1.3.0.1 Exercise "If you enter v <- z[seq(1,5,2)], what will happen? Make sure you understand why."
z <- c(1,3,5,7,9,11); z[3]
v <- z[seq(1,5,2)]
#R output [1] 1 5 9
#The sequence created by seq(1,5,2) was 1,3,5 which takes the 1st, 3rd, and 5th values in vector z which are 1,5 and 9

#9.1.3.0.2 Exercise "Write a one-line command to extract a vector consisting of the second, first, and third elements of z in that order."
z[c(2,1,3)]

#9.1.3.0.3 Exercise "What happens when I set the value of an element that doesn’t exist? For example, try
z[9] <- 11
# It adds a value in the 11th spot and has two NA value in the 9th and 10th spot ([1]  1  3  5  7  9 11 NA NA 11)

#9.1.3.0.4 Exercise "Write code that computes values of y=(x−1)(x+1)y=(x−1)(x+1) for x=1,2,⋯,10x=1,2,⋯,10, and plots yy versus xx with the points plotted and connected by a line.
x<-1:10
y=(x-1)/(x+1)
[1] 0.0000000 0.3333333 0.5000000 0.6000000 0.6666667 0.7142857 0.7500000 0.7777778 0.8000000 0.8181818

#9.1.5.0.2 Exercise runif(n) is a function that generates a vector of n random, uniformly distributed numbers between 0 and 1. Create a vector of 20 numbers, then find the subset of those numbers that is less than the mean. More on runif and related functions soon.
X<-runif(20)
[1] 0.5496791 0.9326274 0.6311265 0.8525927 0.6582302 0.3428317 0.9195333 0.7450357 0.1310586 0.7874871 0.6566901
[12] 0.4103745 0.3790862 0.1626624 0.7106890 0.2838167 0.4323100 0.9157323 0.1695623 0.1101018
belowmean<-X[X<mean(X)]
[1] 0.3428317 0.1310586 0.4103745 0.3790862 0.1626624 0.2838167 0.4323100 0.1695623 0.1101018

#9.1.5.0.3 ExerciseFind the positions of the elements that are less than the mean of the vector you just created (e.g. if your vector were (0.1 0.9 0.7 0.3) the answer would be (1 4)).


X<mean(X)
[1] FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE  TRUE FALSE FALSE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE FALSE
[19]  TRUE  TRUE
#These is the 6th, 9th, 12-14th, 16, 17, 19, 20th values

#9.1.5.0.4 Exercise Specify two ways to take only the elements in the odd positions (first, third, …) of a vector of arbitrary length.

#9.2.1.0.1 Exercise
#Use a command of the form X <- matrix(v,nrow=2,ncol=4) where v is a data vector, to create the following matrix X:
X <- matrix(c(1:2),nrow=2,ncol=4)
[,1] [,2] [,3] [,4]
[1,]    1    1    1    1
[2,]    2    2    2    2

#9.2.1.0.2 Exercise
#Use rnorm and matrix to create a 5×7 matrix of Gaussian random numbers with mean 1 and standard deviation 2.
X <- matrix(c(rnorm(35)),nrow=5,ncol=7)
X
[,1]       [,2]       [,3]       [,4]       [,5]       [,6]       [,7]
[1,]  0.4797815 -1.1425672  0.2565189 -0.7012084 -0.4013126  0.3056738  1.0478335
[2,] -0.0274295  2.0114421  0.4050256 -0.1153861  0.1638740 -0.5191957 -0.3998890
[3,] -0.7520081 -1.3140363  1.2591518 -0.6481927  1.1063179 -0.7017249 -0.4611202
[4,]  2.4247444  0.4432104  0.2578481  2.5279227  1.0538170  0.2754212  0.4598959
[5,] -3.7602385 -0.7781705 -1.0205395  0.9020330  2.2053469  0.8718720  2.2483039

#9.2.2.0.1 Exercise
#Verify that rbind(C,D) works, cbind(C,C) works, but cbind(C,D) doesn’t. Why not?
C <- cbind(1:3,4:6,5:7); C
D <- rbind(1:3,4:6); D
rbind(C,D)
[,1] [,2] [,3]
[1,]    1    4    5
[2,]    2    5    6
[3,]    3    6    7
[4,]    1    2    3
[5,]    4    5    6
cbind(C,C)
> cbind(C,C)
[,1] [,2] [,3] [,4] [,5] [,6]
[1,]    1    4    5    1    4    5
[2,]    2    5    6    2    5    6
[3,]    3    6    7    3    6    7
cbind(C,D)
Error in cbind(C, D) : number of rows of matrices must match (see arg 2)
#cbind(C,D) doesn't work because the number of rows is different in C and D

#9.3.0.0.1 Exercise
#What happens when we set the dimension attribute on a vector? For example:
  
x <- seq(1,27)
dim(x) <- c(3,9)
is.array(x)
[1] TRUE
is.matrix(x)
[1] TRUE

9.6.0.0.1 Exercise

#Download the hurricanes.csv file from the tutorial website: http://kingaa.github.io/R_Tutorial/hurricanes.csv. Examine the resulting data frame by printing it and using the str command. Note the class type of each variable.
setwd("/Users/reginazweng/Documents/GitHub/Rbootcamp")
hurricane <- read.csv("hurricanes.csv",comment.char='#')
#Data
Year      Name   MasFem MinPressure_before Minpressure_Updated.2014 Gender_MF Category alldeaths  NDAM
1  1950      Easy  6.77778                958                      960         1        3         2  1590
2  1950      King  1.38889                955                      955         0        3         4  5350
3  1952      Able  3.83333                985                      985         0        1         3   150
4  1953   Barbara  9.83333                987                      987         1        1         1    58
5  1953  Florence  8.33333                985                      985         1        1         0    15
6  1954     Carol  8.11111                960                      960         1        3        60 19321
7  1954      Edna  8.55556                954                      954         1        3        20  3230
8  1954     Hazel  9.44444                938                      938         1        4        20 24260
9  1955    Connie  8.50000                962                      962         1        3         0  2030
10 1955     Diane  9.88889                987                      987         1        1       200 14730
11 1955      Ione  5.94444                960                      960         0        3         7  6200
12 1956    Flossy  7.00000                975                      975         1        2        15  1540
13 1958    Helene  9.88889                946                      946         1        3         1   540
14 1959     Debra  9.88889                984                      984         1        1         0   430
15 1959    Gracie  9.77778                950                      950         1        3        22   510
16 1960     Donna  9.27778                930                      930         1        4        50 53270
17 1960     Ethel  8.72222                981                      981         1        1         0    35
18 1961     Carla  9.50000                931                      931         1        4        46 15850
19 1963     Cindy  9.94444                996                      996         1        1         3   300
20 1964      Cleo  7.94444                968                      968         1        2         3  6450
21 1964      Dora  9.33333                966                      966         1        2         5 16260
22 1964     Hilda  8.83333                950                      950         1        3        37  2770
23 1964    Isbell  9.44444                974                      974         1        2         3   800
24 1965     Betsy  8.33333                948                      948         1        3        75 20000
25 1966      Alma  8.77778                982                      982         1        2         6   730
26 1966      Inez  8.27778                983                      983         1        1         3    99
27 1967    Beulah  7.27778                950                      950         1        3        15  5060
28 1968    Gladys  8.94444                977                      977         1        2         3   800
29 1969   Camille  9.05556                909                      909         1        5       256 23040
30 1970     Celia  9.44444                945                      945         1        3        22  6870
31 1971     Edith  8.50000                978                      978         1        2         0   300
32 1971      Fern  7.38889                979                      979         1        1         2   500
33 1971    Ginger 10.00000                995                      995         1        1         0   200
34 1972     Agnes  8.66667                980                      980         1        1       117 20430
35 1974    Carmen  8.72222                952                      952         1        3         1  1180
36 1975    Eloise  8.94444                955                      955         1        3        21  6190
37 1976     Belle 10.44444                980                      980         1        1         5   570
38 1977      Babe  6.88889                995                      995         1        1         0    66
39 1979       Bob  1.66667                986                      986         0        1         1    70
40 1979     David  1.72222                970                      970         0        2        15  2700
41 1979  Frederic  2.50000                946                      946         0        3         5 12770
42 1980     Allen  2.66667                945                      945         0        3         2  2130
43 1983    Alicia  9.83333                962                      962         1        3        21 10400
44 1984     Diana  9.94444                949                      949         1        2         3   410
45 1985       Bob  1.66667               1002                     1003         0        1         0   130
46 1985     Danny  2.22222                987                      987         0        1         1   160
47 1985     Elena  9.72222                959                      959         1        3         4  4180
48 1985    Gloria  9.50000                942                      942         1        3         8  3020
49 1985      Juan  1.94444                971                      971         0        1        12  4730
50 1985      Kate  9.66667                967                      967         1        2         5  1310
51 1986    Bonnie  9.38889                990                      990         1        1         3     6
52 1986   Charley  2.88889                990                      990         0        1         5    58
53 1987     Floyd  1.83333                993                      993         0        1         0     1
54 1988  Florence  8.33333                984                      984         1        1         1     4
55 1989   Chantal  9.05556                986                      986         1        1        13   290
56 1989      Hugo  2.88889                934                      934         0        4        21 20020
57 1989     Jerry  2.33333                983                      983         0        1         3   230
58 1991       Bob  1.66667                962                      962         0        2        15  3620
59 1992    Andrew  2.22222                922                      922         0        5        62 66730
60 1993     Emily  9.83333                960                      961         1        3         3    96
61 1995      Erin  7.22222                973                      973         1        2         6  1650
62 1995      Opal  8.50000                942                      942         1        3         9  7550
63 1996    Bertha  8.50000                974                      974         1        2         8   700
64 1996      Fran  7.16667                954                      954         1        3        26  8260
65 1997     Danny  2.22222                984                      984         0        1        10   200
66 1998    Bonnie  9.38889                964                      964         1        2         3  1650
67 1998      Earl  1.88889                987                      987         0        1         3   160
68 1998   Georges  2.27778                964                      964         0        2         1  3870
69 1999      Bret  2.33333                951                      951         0        3         0    94
70 1999     Floyd  1.83333                956                      956         0        2        56  8130
71 1999     Irene  9.27778                987                      964         1        1         8  1430
72 2002      Lili 10.33333                963                      963         1        1         2  1260
73 2003 Claudette  9.16667                979                      979         1        1         3   250
74 2003    Isabel  9.38889                957                      957         1        2        51  4980
75 2004      Alex  4.16667                972                      972         0        1         1     5
76 2004   Charley  2.88889                941                      941         0        4        10 20510
77 2004   Frances  6.00000                960                      960         1        2         7 12620
78 2004    Gaston  2.66667                985                      985         0        1         8   170
79 2004      Ivan  1.05556                946                      946         0        3        25 18590
80 2004    Jeanne  8.50000                950                      950         1        3         5 10210
81 2005     Cindy  9.94444                991                      991         1        1         1   350
82 2005    Dennis  2.44444                946                      946         0        3        15  2650
83 2005   Ophelia  9.16667                982                      982         1        1         1    91
84 2005      Rita  9.50000                937                      937         1        3        62 10690
85 2005     Wilma  8.61111                950                      950         1        3         5 25960
86 2007  Humberto  2.38889                985                      985         0        1         1    51
87 2008     Dolly  9.83333                963                      967         1        1         1  1110
88 2008    Gustav  1.72222                951                      954         0        2        52  4360
89 2008       Ike  1.88889                935                      950         0        2        84 20370
90 2011     Irene  9.27778                952                      952         1        1        41  7110
91 2012     Isaac  1.94444                965                      966         0        1         5 24000
92 2012     Sandy  9.00000                945                      942         1        2       159 75000
Elapsed.Yrs                                              Source  ZMasFem ZMinPressure_A    ZNDAM
1           63                                                 MWR -0.00094       -0.35636 -0.43913
2           63                                                 MWR -1.67076       -0.51125 -0.14843
3           61                                                 MWR -0.91331        1.03765 -0.55047
4           60                                                 MWR  0.94587        1.14091 -0.55758
5           60                                                 MWR  0.48108        1.03765 -0.56090
6           59                                                 MWR  0.41222       -0.25310  0.93174
7           59                                                 MWR  0.54993       -0.56288 -0.31234
8           59                                                 MWR  0.82537       -1.38896  1.31360
9           58                                                 MWR  0.53272       -0.14984 -0.40511
10          58                                                 MWR  0.96309        1.14091  0.57679
11          58                                                 MWR -0.25916       -0.25310 -0.08271
12          57                                                 MWR  0.06792        0.52135 -0.44300
13          55                                                 MWR  0.96309       -0.97592 -0.52031
14          54                                                 MWR  0.96309        0.98602 -0.52882
15          54                                                 MWR  0.92866       -0.76940 -0.52263
16          53           http://www.nhc.noaa.gov/pdf/NWS-TPC-5.pdf  0.77372       -1.80199  3.55651
17          53                                                 MWR  0.60158        0.83113 -0.55936
18          52                                                 MWR  0.84258       -1.75036  0.66338
19          50                                                 MWR  0.98030        1.60558 -0.53887
20          49                                                 MWR  0.36057        0.15994 -0.06338
21          49                                                 MWR  0.79094        0.05668  0.69508
22          49                                                 MWR  0.63601       -0.76940 -0.34790
23          49                                                 MWR  0.82537        0.46972 -0.50021
24          48                                                 MWR  0.48108       -0.87266  0.98424
25          47                                                 MWR  0.61879        0.88276 -0.50562
26          47                                                 MWR  0.46386        0.93439 -0.55441
27          46                                                 MWR  0.15400       -0.76940 -0.17085
28          45                                                 MWR  0.67044        0.62461 -0.50021
29          44                                                 MWR  0.70487       -2.88622  1.21928
30          43 WIKI (http://en.wikipedia.org/wiki/Hurricane_Celia)  0.82537       -1.02755 -0.03091
31          42                                                 MWR  0.53272        0.67624 -0.53887
32          42                                                 MWR  0.18843        0.72787 -0.52341
33          42                                                 MWR  0.99752        1.55395 -0.54660
34          41                                                 MWR  0.58436        0.77950  1.01748
35          39                                                 MWR  0.60158       -0.66614 -0.47083
36          38                                                 MWR  0.67044       -0.51125 -0.08348
37          37                                                 MWR  1.13523        0.77950 -0.51799
38          36                                                 MWR  0.03349        1.55395 -0.55696
39          34                                                 MWR -1.58468        1.08928 -0.55665
40          34                                                 MWR -1.56747        0.26320 -0.35331
41          34                                                 MWR -1.32647       -0.97592  0.42525
42          33                                                 MWR -1.27482       -1.02755 -0.39738
43          30                                                 MWR  0.94587       -0.14984  0.24201
44          29                                                 MWR  0.98030       -0.82103 -0.53036
45          28                                                 MWR -1.58468        1.91536 -0.55201
46          28                                                 MWR -1.41254        1.14091 -0.54969
47          28                                                 MWR  0.91144       -0.30473 -0.23889
48          28                                                 MWR  0.84258       -1.18244 -0.32857
49          28                                                 MWR -1.49861        0.31483 -0.19636
50          28                                                 MWR  0.89423        0.10831 -0.46078
51          27                                                 MWR  0.80815        1.29580 -0.56160
52          27                                                 MWR -1.20596        1.29580 -0.55758
53          26                                                 MWR -1.53304        1.45069 -0.56199
54          25                                                 MWR  0.48108        0.98602 -0.56175
55          24                                                 MWR  0.70487        1.08928 -0.53964
56          24                                                 MWR -1.20596       -1.59547  0.98578
57          24                                                 MWR -1.37811        0.93439 -0.54428
58          22                                                 MWR -1.58468       -0.14984 -0.28218
59          21                                                 MWR -1.41254       -2.21503  4.59717
60          20                                                 MWR  0.94587       -0.25310 -0.55464
61          18                                                 MWR  0.13678        0.41809 -0.43449
62          18                                                 MWR  0.53272       -1.18244  0.02167
63          17                                                 MWR  0.53272        0.46972 -0.50794
64          17                                                 MWR  0.11957       -0.56288  0.07656
65          16                                                 MWR -1.41254        0.98602 -0.54660
66          15                                                 MWR  0.80815       -0.04658 -0.43449
67          15                                                 MWR -1.51583        1.14091 -0.54969
68          15                                                 MWR -1.39532       -0.04658 -0.26285
69          14                                                 MWR -1.37811       -0.71777 -0.55480
70          14                                                 MWR -1.53304       -0.45962  0.06651
71          14                                                 MWR  0.77372        1.14091 -0.45150
72          11                                                 MWR  1.10080       -0.09821 -0.46465
73          10                                                 MWR  0.73930        0.72787 -0.54274
74          10                                                 MWR  0.80815       -0.40799 -0.17703
75           9                                                 MWR -0.81003        0.36646 -0.56168
76           9                                                 MWR -1.20596       -1.23407  1.02367
77           9                                                 MWR -0.24194       -0.25310  0.41365
78           9                                                 MWR -1.27482        1.03765 -0.54892
79           9                                                 MWR -1.77405       -0.97592  0.87522
80           9                                                 MWR  0.53272       -0.76940  0.22732
81           8                                                 MWR  0.98030        1.34743 -0.53500
82           8                                                 MWR -1.34368       -0.97592 -0.35718
83           8                                                 MWR  0.73930        0.88276 -0.55503
84           8                                                 MWR  0.84258       -1.44059  0.26443
85           8                                                 MWR  0.56715       -0.76940  1.44504
86           6                                                 MWR -1.36089        1.03765 -0.55812
87           5                                                 MWR  0.94587       -0.09821 -0.47624
88           5                                                 MWR -1.56747       -0.71777 -0.22497
89           5                                                 MWR -1.51583       -1.54384  1.01284
90           2                                                 MWR  0.77372       -0.66614 -0.01235
91           1                                                 MWR -1.49861        0.00505  1.29350
92           1                                                 MWR  0.68765       -1.02755  5.23657

course.url <- "http://kingaa.github.io/R_Tutorial/"
download.file(paste0(course.url,"Intro1.R"),destfile="Intro1.R",mode="w")