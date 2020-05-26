data seminar_ratings;
DLM='09'x || ':';
infile '/home/u45542882/hm/seminar.dat' DLM=DLM missover;
input Name $15. Comment:$60. Rating:1.;
run;
proc print data=seminar_ratings(drop=Comment);
run;