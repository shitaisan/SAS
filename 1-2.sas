data admin stock purchasing;
set heh.employee_organization;
select (Department);
when ("Administration") output admin;
when ("Purchasing") output purchasing;
when ("Stock & Shipping") output stock;
otherwise;
end;
run;