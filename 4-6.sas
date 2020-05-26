data donate07;
infile '/home/u45542882/hm/charity.dat';
input ID:$ Sum: @@;
run;