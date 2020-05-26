DATA res;
set heh.country(drop=Population);
Outdated = 'N';
output;
if Country_FormerName^="" then do
Country_Name=Country_FormerName;
Outdated='Y';
output;
end;
drop Country_FormerName;
run;