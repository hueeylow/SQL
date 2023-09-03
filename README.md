# SQL Project Demo
Welcome to my SQL project demo! 

In this showcase, I will give a walkthrough using example on Housing BTO recent launch:

## <b> Approach </b><br>
(1) Create a Database with 2 Tables<br>
(2) Query results with conditions / set parameters
<br>

#### (1) Create a Database with 2 Tables
With SQL client installed and localhost server ready, it's good to go create my database and tables structure. <br> I named my Database as <b> Housing_BTO_DB </b> and created 2 respective Tables, <b> Site_Location </b> and <b> Pricing_Model</b>.<br>
<br>
It is always a good practice to segregate critical info. Likewise in this example, pricing model into separate data table.
<br>
<img src="https://github.com/hueeylow/SQL/blob/main/declare_variables.gif" width=550>

After creating 2 data tables, insert values into these data tables
<table>
<tr>
<td><img src="https://github.com/hueeylow/SQL/blob/main/insert_values_site.gif" width="450"></td>
<td><img src="https://github.com/hueeylow/SQL/blob/main/insert_values_pricing.gif" width="450"></td>
</tr>
</table>
Select * to display results
<table>
<tr>
<td><img src="https://github.com/hueeylow/SQL/blob/main/site_location_all_1.gif" width="450"></td>
<td><img src="https://github.com/hueeylow/SQL/blob/main/pricing_model_all_1.gif" width="450"></td>
</tr>
</table>
Joining both data tables for overview database
<img src="https://github.com/hueeylow/SQL/blob/main/data_overview.gif" width ="900">
    
#### (2) Query results with conditions / set parameters
<table>
<tr>
<td>
  <b> 2.1 Selling Price from Lowest to Highest </b><br>
  <img src="https://github.com/hueeylow/SQL/blob/main/order_by.gif" width ="450" height="250"></td>
<td>
  <b> 2.2 Show Estate Type </b><br>
  <img src="https://github.com/hueeylow/SQL/blob/main/distinct.gif" width ="450" height="250"></td>
</tr>

<tr>
<td>
  <b> 2.3 Where Flat Type is 2-room Flexi </b><br>
  <img src="https://github.com/hueeylow/SQL/blob/main/like.gif" width ="450" height="200"></td>    
<td>
  <b> 2.4 Total projects by Mature/Non-Mature Towns </b><br>
  <img src="https://github.com/hueeylow/SQL/blob/main/total_proj_grp_by.gif" width ="450" height="200"></td>
</tr>
</table>

<table>
<tr>
<td>
  <b> 2.5 Price Range between $45,000 and $400,000</b><br>
  <img src="https://github.com/hueeylow/SQL/blob/main/price_range.gif" width ="450" height="250"></td> 

<td>
  <b> 2.6 Total Units by Project</b><br>
  <img src="https://github.com/hueeylow/SQL/blob/main/total_units.gif" width ="450" height="250"></td> 

</tr>

</table>
