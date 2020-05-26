data res;
set heh.order_fact(where=(year(Order_Date)=2005));
if Order_Type=1 then TotalRetail+1;
if Order_Type=2 then TotalCatalog+1;
if Order_Type=3 then TotalInternet+1;
run;
proc print data=res;
run;