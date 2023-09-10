# SQL Project Demo - Data Cleansing
Welcome to my SQL project demo on how to do "data scrub" from downloaded source database.
<br>
<br>
Data cleaning is vital procedure in data analytics process because it improves the quality and accuracy of the data, when incorrect information is rectified, unused data and duplicates are removed. And of course, business decisions is always relying on accurate data as source of truth.
<br>
<br>
In this showcase, I will walk you through on how to perform data cleansing:
<br>
## <b> Approach </b><br>
(1) Create a Database <br>
<img src="https://github.com/hueeylow/SQL/blob/main/01_nf_create_db.gif" width="800">
<br>
<br>
(2) Import excel file to SQL server
<br> Go to the newly created database 'NetflixDB' from the object explorer panel, right-click and select tasks, select import data. After importing, you will see total no. of rows imported. 
<img src="https://github.com/hueeylow/SQL/blob/main/02_nf_import.gif " width="800">
<br> <br>
(3) Delete rows with no values
<br>
NULL values found in the column fields of 'director', 'country', 'cast' and 'title' had to be removed, due to incomplete data as well as data inconsistency. <br> <br>It is a good practice to do a SELECT statement to check the correct columns is being called, before executing the DELETE statement with conditions: <br>
<img src="https://github.com/hueeylow/SQL/blob/main/03_nf_view_data_import.gif" width="800">
<br>
<img src="https://github.com/hueeylow/SQL/blob/main/04_nf_delete_null_1.gif " width="800">
<br>
<img src="https://github.com/hueeylow/SQL/blob/main/04_nf_delete_null_2.gif" width="800">
<br>
<br>
(4) Convert Date Type Format
<br>
Original format in date_added is in YYYY-MM-DD HH:MI:SS. The approach will convert the format to YYYY-MM-DD, as HH:MI:SS is not required.
<br> 
<img src="https://github.com/hueeylow/SQL/blob/main/05_nf_convert_date_1.gif" width="800">
<br> 
It is a good practice to do a SELECT statement to check the correct column is being called, with an additional column to display desired outcome: <br>
<img src="https://github.com/hueeylow/SQL/blob/main/05_nf_convert_date_2.gif" width="800">
<br>
<br>
(5) Remove Special Characters
<br> 
Special characters of ' and # were removed using UPDATE statement with conditions
<img src="https://github.com/hueeylow/SQL/blob/main/06_nf_remove_special_char_1.gif" width="700">
<br> 
<img src="https://github.com/hueeylow/SQL/blob/main/06_nf_remove_special_char_2.gif" width="700">
<br> 
<img src="https://github.com/hueeylow/SQL/blob/main/06_nf_remove_special_char_5.gif" width="700">
<br> 
<br>
(6) UPDATE NULL with Assigned value
<br>
Although the column [date_added_converted] contains NULL values, however there is Year in the column [release_year]. Hence, will assign MM-DD value of 01-01-YYYY to replace the NULL values.
<img src="https://github.com/hueeylow/SQL/blob/main/07_nf_remove_date_convert_null_1.gif" width="800">
<br>
<img src="https://github.com/hueeylow/SQL/blob/main/07_nf_remove_date_convert_null_2.gif" width="800">
<br>
<img src="https://github.com/hueeylow/SQL/blob/main/08_nf_outcome.gif" width="800">
<br>
<br>
Here are the data files of before and after data cleaning!
