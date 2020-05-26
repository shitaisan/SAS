data AU_trainees US_trainees;
infile '/home/u45542882/hm/sales1.dat';
input @1 ID 6.
@21 Last_Name $18. 
@43 Job_Title $20.
@64 Salary DOLLARX7.
@73 Country $2.
@87 Hire_Date MMDDYY10.;
if Country='AU' then output AU_trainees;
else if Country='US' then output US_trainees;
run;
proc print data=AU_trainees(drop=Country);
proc print data=US_trainees(drop=Country);
run;