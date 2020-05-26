data temp;
set heh.order_qtrsum;
run;
proc sort data=temp;
by Customer_ID Order_Qtr;
run;
data qtrcustomers(keep=Customer_ID Order_Qtr Total_Sales Num_Months);
set temp;
by Customer_ID Order_Qtr;
if first.Order_Qtr then do
Total_Sales=0;
Num_Months=0;
end;
Total_Sales+Sale_Amt;
Num_Months+1;
if last.Order_Qtr then output;
format Total_Sales dollar11.2;
run;
proc print data=qtrcustomers;
run;

