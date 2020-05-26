data supplier(keep = Supplier_ID Supplier_Name Country);
length Supplier_ID $ 5 
	   Supplier_Name $ 30 
	   Country $ 2;
infile '/home/u45542882/hm/supply.dat';  
input Supplier_ID $;
   	  Country=scan(_INFILE_,-1,' ');
      StartCol=find(_INFILE_,' ');
      EndCol=find(_INFILE_,' ', -Length(_INFILE_));
Supplier_Name=substr(_INFILE_,StartCol+1,EndCol-StartCol);
run;
proc print data=supplier;
run;