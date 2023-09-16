# SQL Project Demo - Data Cleaning
Welcome to my SQL project demo on how to perform data scrubbing on raw data source.
<br>
<br>
Data Cleaning is essential step before ETL process, where it fix data with errors and inconsistencies; remove unused and duplicates, in order to enhance usability of the data before loading to data warehouse.
<br>
<br>
In this showcase, I will walk you through on how to perform data cleaning:
<br>
## <b> Approach </b><br>
<b> (1) Create a Database <br> </b>
<img src="https://github.com/hueeylow/SQL/blob/main/01_nf_create_db.gif" width="800">
<br>
<br>
<b> (2) Import Excel file to SQL Server </b>
<br> Go to the newly created database 'NetflixDB' from the object explorer panel, right-click and select tasks, select import data. After importing, you will see total no. of rows imported. 
<img src="https://github.com/hueeylow/SQL/blob/main/02_nf_import.gif " width="800">
<br> <br>
<b>(3) Delete Rows with No Values </b>
<br>
NULL values found in the column fields of 'director', 'country', 'cast' and 'title' had to be removed, due to incomplete data as well as data inconsistency. <br> <br>It is good practice to do a SELECT statement to check the correct columns is being called, before executing the DELETE statement with conditions: <br>
<img src="https://github.com/hueeylow/SQL/blob/main/03_nf_view_data_import.gif" width="800">
<br>
<img src="https://github.com/hueeylow/SQL/blob/main/04_nf_delete_null_1.gif " width="800">
<br>
<img src="https://github.com/hueeylow/SQL/blob/main/04_nf_delete_null_2.gif" width="800">
<br>
<br>
<b>(4) Convert Date Type Format </b>
<br>
Original format in date_added is in YYYY-MM-DD HH:MI:SS. The approach will convert the format to YYYY-MM-DD, as HH:MI:SS is not required.
It is good practice to do a SELECT statement to check the correct column is being called before execute update query. <br>
<img src="https://github.com/hueeylow/SQL/blob/main/05_nf_convert_date_1.gif" width="800">
<br> 
<img src="https://github.com/hueeylow/SQL/blob/main/05_nf_convert_date_2.gif" width="800">
<br>
<br>
<b>(5) Remove Unwanted Characters</b>
<br> 
Special characters of ' and # were removed using UPDATE statement with conditions
<img src="https://github.com/hueeylow/SQL/blob/main/06_nf_remove_special_char_1.gif" width="800">
<br> 
<img src="https://github.com/hueeylow/SQL/blob/main/06_nf_remove_special_char_2.gif" width="800">
<br> 
<img src="https://github.com/hueeylow/SQL/blob/main/06_nf_remove_special_char_5.gif" width="800">
<br> 
<br>
<b>(6) UPDATE NULL with Assigned Value </b>
<br>
Although the column [date_added_converted] contains NULL values, however there is Year in the column [release_year]. Hence, will assign MM-DD value of 01-01-YYYY to replace the NULL values.
<img src="https://github.com/hueeylow/SQL/blob/main/07_nf_remove_date_convert_null_1.gif" width="800">
<br>
<img src="https://github.com/hueeylow/SQL/blob/main/07_nf_remove_date_convert_null_2.gif" width="800">
<br>
<img src="https://github.com/hueeylow/SQL/blob/main/08_nf_overall.gif" width="800">
<br>
<br>
Compare both files of <a href="https://github.com/hueeylow/SQL/blob/main/netflix_titles_original.xls"> before</a> and <a href="https://github.com/hueeylow/SQL/blob/main/netflix_titles_cleaned.xls"> after</a>. You will need to download the raw file to view the data.
<br>
<br>
<a href = "https://github.com/hueeylow"> < Back to main page </a>
