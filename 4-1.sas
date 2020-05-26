data sales_staff2;
infile '/home/u45542882/hm/sales2.dat';
input @1 ID 6.
@21 Last_Name $18.;
input @1 Job_Title $20. 
@22 Hire_Date MMDDYY10.
@33 Salary DOLLARX8.;
input;
run;
proc print data=sales_staff2;
run;
