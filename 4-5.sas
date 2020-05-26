data contacts;
infile '/home/u45542882/hm/phone2.csv' DSD;
input Name:$30. PhoneNumber1:$14. PhoneNumber2:$14.;
run;
proc print data=contacts;
run;