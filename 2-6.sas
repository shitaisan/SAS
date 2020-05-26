data temp;
set heh.usorders04;
run;
proc sort data=temp;
by Customer_Id Order_Type;
run;
data discount1 discount2 discount3;
set temp;
by Customer_Id Order_Type;
if first.Order_Type then TotSales=0;
TotSales+Total_Retail_Price;
if last.Order_Type then
Select (Order_Type);
When (1) output discount1;
When (2) output discount2;
When (3) output discount3;
end;
keep Customer_ID Customer_Name TotSales;
run;