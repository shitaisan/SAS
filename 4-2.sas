data US_sales AU_sales;
infile '/home/u45542882/hm/sales3.dat';
input @1 ID 6.
@21 Last_Name $18.
@43 Job_Title $20.;
input @1 Salary DOLLAR8.
@10 Country $2. @;
if Country='AU' then
input @24 Hire_Date DDMMYY10.;
else if Country='US' then input @24 Hire_Date MMDDYY10.;
drop Country;
run;
proc print data=US_sales;
proc print data=AU_sales;
run;