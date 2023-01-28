#matrix operation

Games 
rownames(Games)
colnames(Games)
Games["LeBronJames", "2012"]

FieldGoals
#Matrix is divided by another matrix element by element
round (FieldGoals / Games, 1)

round (MinutesPlayed / Games)

MinutesPlayed

#------------------Output--------------------
# 
# > Games 
# 2005 2006 2007 2008 2009 2010 2011 2012 2013 2014
# KobeBryant       80   77   82   82   73   82   58   78    6   35
# JoeJohnson       82   57   82   79   76   72   60   72   79   80
# LeBronJames      79   78   75   81   76   79   62   76   77   69
# CarmeloAnthony   80   65   77   66   69   77   55   67   77   40
# DwightHoward     82   82   82   79   82   78   54   76   71   41
# ChrisBosh        70   69   67   77   70   77   57   74   79   44
# ChrisPaul        78   64   80   78   45   80   60   70   62   82
# KevinDurant      35   35   80   74   82   78   66   81   81   27
# DerrickRose      40   40   40   81   78   81   39    0   10   51
# DwayneWade       75   51   51   79   77   76   49   69   54   62
# > rownames(Games)
# [1] "KobeBryant"     "JoeJohnson"     "LeBronJames"   
# [4] "CarmeloAnthony" "DwightHoward"   "ChrisBosh"     
# [7] "ChrisPaul"      "KevinDurant"    "DerrickRose"   
# [10] "DwayneWade"    
# > colnames(Games)
# [1] "2005" "2006" "2007" "2008" "2009" "2010" "2011" "2012" "2013"
# [10] "2014"
# > Games["LeBronJames", "2012"]
# [1] 76
# > FieldGoals
# 2005 2006 2007 2008 2009 2010 2011 2012 2013 2014
# KobeBryant      978  813  775  800  716  740  574  738   31  266
# JoeJohnson      632  536  647  620  635  514  423  445  462  446
# LeBronJames     875  772  794  789  768  758  621  765  767  624
# CarmeloAnthony  756  691  728  535  688  684  441  669  743  358
# DwightHoward    468  526  583  560  510  619  416  470  473  251
# ChrisBosh       549  543  507  615  600  524  393  485  492  343
# ChrisPaul       407  381  630  631  314  430  425  412  406  568
# KevinDurant     306  306  587  661  794  711  643  731  849  238
# DerrickRose     208  208  208  574  672  711  302    0   58  338
# DwayneWade      699  472  439  854  719  692  416  569  415  509
# > FieldGoals / Games
# 2005      2006      2007      2008      2009
# KobeBryant     12.225000 10.558442  9.451220  9.756098  9.808219
# JoeJohnson      7.707317  9.403509  7.890244  7.848101  8.355263
# LeBronJames    11.075949  9.897436 10.586667  9.740741 10.105263
# CarmeloAnthony  9.450000 10.630769  9.454545  8.106061  9.971014
# DwightHoward    5.707317  6.414634  7.109756  7.088608  6.219512
# ChrisBosh       7.842857  7.869565  7.567164  7.987013  8.571429
# ChrisPaul       5.217949  5.953125  7.875000  8.089744  6.977778
# KevinDurant     8.742857  8.742857  7.337500  8.932432  9.682927
# DerrickRose     5.200000  5.200000  5.200000  7.086420  8.615385
# DwayneWade      9.320000  9.254902  8.607843 10.810127  9.337662
# 2010      2011      2012      2013     2014
# KobeBryant     9.024390  9.896552  9.461538  5.166667 7.600000
# JoeJohnson     7.138889  7.050000  6.180556  5.848101 5.575000
# LeBronJames    9.594937 10.016129 10.065789  9.961039 9.043478
# CarmeloAnthony 8.883117  8.018182  9.985075  9.649351 8.950000
# DwightHoward   7.935897  7.703704  6.184211  6.661972 6.121951
# ChrisBosh      6.805195  6.894737  6.554054  6.227848 7.795455
# ChrisPaul      5.375000  7.083333  5.885714  6.548387 6.926829
# KevinDurant    9.115385  9.742424  9.024691 10.481481 8.814815
# DerrickRose    8.777778  7.743590       NaN  5.800000 6.627451
# DwayneWade     9.105263  8.489796  8.246377  7.685185 8.209677
# > round (FieldGoals / Games, 1)
# 2005 2006 2007 2008 2009 2010 2011 2012 2013 2014
# KobeBryant     12.2 10.6  9.5  9.8  9.8  9.0  9.9  9.5  5.2  7.6
# JoeJohnson      7.7  9.4  7.9  7.8  8.4  7.1  7.0  6.2  5.8  5.6
# LeBronJames    11.1  9.9 10.6  9.7 10.1  9.6 10.0 10.1 10.0  9.0
# CarmeloAnthony  9.4 10.6  9.5  8.1 10.0  8.9  8.0 10.0  9.6  8.9
# DwightHoward    5.7  6.4  7.1  7.1  6.2  7.9  7.7  6.2  6.7  6.1
# ChrisBosh       7.8  7.9  7.6  8.0  8.6  6.8  6.9  6.6  6.2  7.8
# ChrisPaul       5.2  6.0  7.9  8.1  7.0  5.4  7.1  5.9  6.5  6.9
# KevinDurant     8.7  8.7  7.3  8.9  9.7  9.1  9.7  9.0 10.5  8.8
# DerrickRose     5.2  5.2  5.2  7.1  8.6  8.8  7.7  NaN  5.8  6.6
# DwayneWade      9.3  9.3  8.6 10.8  9.3  9.1  8.5  8.2  7.7  8.2
# > round (MinutesPlayed / Games)
# 2005 2006 2007 2008 2009 2010 2011 2012 2013 2014
# KobeBryant       41   41   39   36   39   34   38   39   30   34
# JoeJohnson       41   41   41   40   38   35   35   37   33   35
# LeBronJames      43   41   40   38   39   39   38   38   38   36
# CarmeloAnthony   37   38   36   34   38   36   34   37   39   36
# DwightHoward     37   37   38   36   35   38   38   36   34   30
# ChrisBosh        39   39   36   38   36   36   35   33   32   35
# ChrisPaul        36   37   38   38   38   36   36   33   35   35
# KevinDurant      36   36   35   39   40   39   39   39   39   34
# DerrickRose      29   29   29   37   37   37   35  NaN   31   30
# DwayneWade       39   38   38   39   36   37   33   35   33   32
# > MinutesPlayed
# 2005 2006 2007 2008 2009 2010 2011 2012 2013 2014
# KobeBryant     3277 3140 3192 2960 2835 2779 2232 3013  177 1207
# JoeJohnson     3340 2359 3343 3124 2886 2554 2127 2642 2575 2791
# LeBronJames    3361 3190 3027 3054 2966 3063 2326 2877 2902 2493
# CarmeloAnthony 2941 2486 2806 2277 2634 2751 1876 2482 2982 1428
# DwightHoward   3021 3023 3088 2821 2843 2935 2070 2722 2396 1223
# ChrisBosh      2751 2658 2425 2928 2526 2795 2007 2454 2531 1556
# ChrisPaul      2808 2353 3006 3002 1712 2880 2181 2335 2171 2857
# KevinDurant    1255 1255 2768 2885 3239 3038 2546 3119 3122  913
# DerrickRose    1168 1168 1168 3000 2871 3026 1375    0  311 1530
# DwayneWade     2892 1931 1954 3048 2792 2823 1625 2391 1775 1971