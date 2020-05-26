data res;
set heh.newcompetitors;
Country = SubStr(ID, 1, 2);
Store_Code = Left(SubStr(ID, 3));
City = Propcase(City);
if (Char(Store_Code, 1)=1) then output;
run;
proc print data=res(keep = Store_Code Country City Postal_Code);
run;