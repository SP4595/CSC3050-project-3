# 1. exclusive

- trace 1

## 1.1. victom


L1 Cache:2612 
-------- STATISTICS ----------
Num Read: 232611
Num Write: 50903
Num Hit: 228814
Num Miss: 54182
Total Cycles: 3476784
---------- LOWER CACHE ----------
-------- STATISTICS ----------
Num Read: 1665472
Num Write: 1786944
Num Hit: 3424369
Num Miss: 28047
Total Cycles: 30181232
---------- LOWER CACHE ----------
-------- STATISTICS ----------
Num Read: 20864
Num Write: 24512
Num Hit: 44993
Num Miss: 383
Total Cycles: 938160

## 1.2. non-victom

L1 Cache:2612 
-------- STATISTICS ----------
Num Read: 232611
Num Write: 50903
Num Hit: 228814
Num Miss: 54700
Total Cycles: 3490002
---------- LOWER CACHE ----------
-------- STATISTICS ----------
Num Read: 1693248
Num Write: 1801856
Num Hit: 3466631
Num Miss: 28473
Total Cycles: 30562328
---------- LOWER CACHE ----------
-------- STATISTICS ----------
Num Read: 20416
Num Write: 24000
Num Hit: 44041
Num Miss: 375
Total Cycles: 918320

# 2. inclusive

## 2.1. victom


L1 Cache:2612 
-------- STATISTICS ----------
Num Read: 232611
Num Write: 50903
Num Hit: 228814
Num Miss: 53979
Total Cycles: 763375
---------- LOWER CACHE ----------
-------- STATISTICS ----------
Num Read: 3454656
Num Write: 816064
Num Hit: 4241631
Num Miss: 29089
Total Cycles: 34615168
---------- LOWER CACHE ----------
-------- STATISTICS ----------
Num Read: 1861696
Num Write: 321088
Num Hit: 2175254
Num Miss: 7530
Total Cycles: 44258080

## 2.2. non-victom

L1 Cache:2612 
-------- STATISTICS ----------
Num Read: 232611
Num Write: 50903
Num Hit: 228814
Num Miss: 54700
Total Cycles: 768422
---------- LOWER CACHE ----------
-------- STATISTICS ----------
Num Read: 3500800
Num Write: 816064
Num Hit: 4287772
Num Miss: 29092
Total Cycles: 34984296
---------- LOWER CACHE ----------
-------- STATISTICS ----------
Num Read: 1861888
Num Write: 320896
Num Hit: 2175254
Num Miss: 7530
Total Cycles: 44258080

# 3. one layer implementation

## 3.1. victom

L1 Cache:2612 
-------- STATISTICS ----------
Num Read: 232611
Num Write: 50903
Num Hit: 228814
Num Miss: 53979
Total Cycles: 6902535

## 3.2. non-victom

L1 Cache:2612 
-------- STATISTICS ----------
Num Read: 232611
Num Write: 50903
Num Hit: 228814
Num Miss: 54700
Total Cycles: 6973914