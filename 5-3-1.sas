data sale_stats(keep = Customer_ID MonthAvg MonthMax MonthSum);
   set heh.orders_midyear;
   MonthAvg=round(mean(of month1-month6));
   MonthMax=max(of month1-month6);
   MonthSum=sum(of month1-month6);
run;
