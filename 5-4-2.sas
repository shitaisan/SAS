proc contents data = heh.US_newhire;
run;

data US_converted(drop = ID Telephone Birthday);
set heh.US_newhire;
ID_new = input(compress(ID,'-'),20.);
length Telephone_new $ 8;
Telephone_new = cat(substr(put(Telephone,7.),1,3),'-',substr(put(Telephone,7.),4));
Birthday_new = input(Birthday,date9.);
run;

proc print data=US_converted;
run;