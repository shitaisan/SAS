data stat_orders_midyear(keep = Customer_ID median max_1 max_2);
set heh.orders_midyear;
if n(of month1-month6) >= 5;
	median=median(of month1-month6);
	max_1=largest(1,of month1-month6);
	max_2=largest(2,of month1-month6);
run;