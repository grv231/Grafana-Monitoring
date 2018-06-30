# Grafana-Monitoring

## Project Description:

This project is aimed at displaying the power of Grafana dashboards which are solwly being adopted into major organizations as monitoring tool for log analytics and data analysis. Grafana is a data visalization tool which greatly enhaces the visualization power of legacy Graphite DB and StatsD framework.

In this project, dashboards have been created for two different data sources:

![alt text](https://github.com/grv231/Grafana-Monitoring/blob/master/Images/DataSources.jpg "Data Sources")

Individual dashboards have been given below for the data sources:
<br>
 - **MySQL Database**
 ![alt text](https://github.com/grv231/Grafana-Monitoring/tree/master/Images/SalesDashboard/Sales_Dashboard.jpg "Sales_Dashboard")
 <br>
 <br>
 - **AWS CloudWatch**
 ![alt text](https://github.com/grv231/Grafana-Monitoring/tree/master/Images/CloudWatchDashboard/CloudWatchDashboard.jpg "AWS_Cloudwatch_Dashboard")
 <br>
 <br>

## Project Setup:

:one: The Grafana tool along with Graphite DB and StatsD was setup on Amazon EC2 instance.
<br>
<br>
:two: Along with above mentioned tools, MySQL DB instance was setup on EC2 as well and MySQL WOrkbench was setup on localsystem and configured to be used with AWS EC2 instance using 3306 port on security group ingress.
<br>
<br>
:three:This repository focuses on how to setup the data sources, configuration and dashboard representation through images using Grafana.
<br>
<br>
:four: To navigate the project files, please see the project files structure below:

1. *Queries*: Contains the queries to be used when setting up metrics for visualization for Sales Dashboard
2. *Data-source-scripts*: Contains the SQL query to setup test data in Grafana.
3. *Images*: Contains elaborate images for metrics calculation and main dashboards.

## Metrics determined:
Here are the metrics calculated for the Sales and CLoudwatch dashboard
