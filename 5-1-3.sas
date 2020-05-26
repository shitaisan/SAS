data states(keep = ID Name Location Location2);
set heh.contacts;
pos = Find(Address2, ',');
City = SubStr(Address2, 1, pos-1);
State = SubStr(Address2, pos+2, 2);
Zip = SubStr(Address2, pos+5);

pos = Find(Address1, ' ');
Street = SubStr(Address1, pos);
Numb = SubStr(Address1, 1, pos-1);
Location = Catt(City, ", ", Street, ', ', Numb);
Location2 = Catt(State, ', ', Zip);
run;
proc print data=states;
run;


