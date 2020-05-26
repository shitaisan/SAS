data sales;
infile '/home/u45542882/hm/sales.csv' dlm=',' missover;
input Employee_ID: First_Name:$12. Last_Name:$18. Gender:$1. Salary:DOLLARX10. Job_Title:$25. Country:$2.;
run;
proc print data = sales;
run;