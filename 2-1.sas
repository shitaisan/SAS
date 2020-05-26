data res;
set heh.order_fact(where=(Order_Date between '01Nov2004'd and '14dec2004'd));
Sales2Dte+Total_Retail_Price;
Num_Orders+1;
format Sales2Dte dollar10.2;
run;
proc print data=res(keep=Order_ID Order_Date Total_Retail_Price Sales2Dte Num_Orders);
run;