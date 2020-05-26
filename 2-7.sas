data temp;
set heh.customer_dim;
run;
proc sort data=temp;
by Customer_Type Customer_BirthDate;
run;
data res(keep=Customer_Type oldest youngest o_ID y_ID agerange);
set temp;
by Customer_Type Customer_BirthDate;
Retain oldest youngest o_ID y_ID agerange;
if first.Customer_Type then do
youngest=Customer_BirthDate; 
y_ID = Customer_ID;
end;
if last.Customer_Type then do
oldest=Customer_BirthDate;
o_ID = Customer_ID;
agerange = yrdif(youngest, oldest);
output;
end;
format youngest oldest date.;
run;
proc print data=res;
run;