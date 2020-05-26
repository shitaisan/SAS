data sales_staff;
infile '/home/u45542882/hm/sales1.dat';
input @1 ID 6.
@21 Last_Name $18. 
@43 Job_Title $20.
@64 Salary DOLLARX8.
@87 Hire_Date MMDDYY10.;
run;
proc print data = sales_staff;
run;
