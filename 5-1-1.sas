data codes;
set heh.au_salesforce;
FCode1 = Lowcase(SubStr(First_Name, 1, 1));
FCode2 = Lowcase(SubStr(First_Name, Length(First_Name), 1));
LCode = Lowcase(SubStr(Last_Name, 1, 4));
output;
run;
proc print data=codes;
run;
