# Grafana-Monitoring

## Project Description:

This project is aimed at displaying the power of Grafana dashboards which are solwly being adopted into major organizations as monitoring tool for log analytics and data analysis. Grafana is a data visalization tool which greatly enhaces the visualization power of legacy Graphite DB and StatsD framework.

In this project, dashboards have been created for two different data sources:

![alt text](https://github.com/grv231/Grafana-Monitoring/blob/master/Images/DataSources.jpg "Data Sources")

Individual dashboards have been given below for the data sources:

- **MySQL Database**
 
 ![alt text](https://github.com/grv231/Grafana-Monitoring/blob/master/Images/SalesDashboard/Sales_Dashboard.jpg "Sales_Dashboard")
 <br>
 
- **AWS CloudWatch**
 
 ![alt text](https://github.com/grv231/Grafana-Monitoring/blob/master/Images/CloudWatchDashboard/CloudWatchDashboard.jpg "AWS_Cloudwatch_Dashboard")
 <br>

## Project Setup:

:one: The Grafana tool along with Graphite DB and StatsD was setup on Amazon EC2 instance.
<br>
<br>
:two: Along with above mentioned tools, MySQL DB instance was setup on EC2 as well and MySQL WOrkbench was setup on localsystem and configured to be used with AWS EC2 instance using 3306 port on security group ingress.
<br>
<br>
:three: This repository focuses on how to setup the data sources, configuration and dashboard representation through images using Grafana.
<br>
<br>
:four: To navigate the project files, please see the project files structure below:

1. *Queries*: Contains the queries to be used when setting up metrics for visualization for Sales Dashboard
2. *Data-source-scripts*: Contains the SQL query to setup test data in Grafana.
3. *Images*: Contains elaborate images for metrics calculation and main dashboards.

## Metrics determined:
Here are the metrics calculated for the Sales and Cloudwatch dashboard:

### **SALES DASHBOARD**
The Sales dashboard consists of metric for Average Sales represented in:

 1. Graph Panel
 2. Tabular Data Panel
 3. Heatmap Panel
 
 #### Sales Trend
 ![alt text](https://github.com/grv231/Grafana-Monitoring/blob/master/Images/SalesDashboard/SalesTrend.jpg "SalesTrend")
 
Features used in the Sales Trend are:
 
- Annotations have been used in Grafana to determine **Good Sales** in termns of values that are calculated from the queries.
![alt text](https://github.com/grv231/Grafana-Monitoring/blob/master/Images/SalesDashboard/Annotations.jpg "Annotations")

- Moreover, when we dive deep in the creation of annotations, we can see that the data source has been selected as MySQL and Query consists of Macros that have been mentioned in the *Data sources* folder. These Macros are great shortcuts that can be used with Grafana
 
![alt text](https://github.com/grv231/Grafana-Monitoring/blob/master/Images/SalesDashboard/AnnotationsCreation.jpg "Annotations_Creation")

- Variables are used to give us the simulated effect of drop down list in grafana. It is used here for giving us the options of two separate products namely *Jeans* and *Shirts*. Here we select multi value and *include all options* for displaying in the select drop down list
 
![alt text](https://github.com/grv231/Grafana-Monitoring/blob/master/Images/SalesDashboard/VariablesCreation.jpg "Variables_Creation")
 
- Use of variables gives us the added functionality of changing the dashboards dynamically on the fly. It helps us select the Products: *Jeans* and *Shirt* seperately and using the *all* function as well for both the Products together in one Graph Panel.

![alt text](https://github.com/grv231/Grafana-Monitoring/blob/master/Images/SalesDashboard/Variables_Dropdown.jpg "Variables_Dropdown")


### **AWS CLOUDWATCH METRICS DASHBOARD**
 The Cloudwatch dashboard consists of metrics calculated for *CPUUtilization*, *NetworkIn vs NetworkOut* and *NetworkIn* separately represented in following panels:
 
 1. Graph Panel
 2. Piechart Panel
 3. D3 Gauge Panel
  
#### Cloudwatch Metrics Trend

:one: CPU Utilization
Grafana here has been configured with the AWS EC2 instance running in us-west-1 region to gather various AWS Cloudwatch metrics. In this case, *CPUUtilization* metric is used to make a dashboard for metrics of Cloudwatch to monitor CPU activity of EC2 instance. The configuration consist of using the **instance-id** parameter of EC2 instance to conect to EC2 instance and develop the dashboard.
 
![alt text](https://github.com/grv231/Grafana-Monitoring/blob/master/Images/CloudWatchDashboard/CPUUtil_configuration_EC2.jpg "CPU_Utilization_EC2")

:two: Network In vs Network Out
Grafana here has been configured with the AWS EC2 instance running in us-west-1 region to compare the Network In vs Network out for the EC2 instance. It helps us gives the representation of the network monitoring for the instance and easy display on the dashboard. These values dynamically change as network in vs out increases/decreses

![alt text](https://github.com/grv231/Grafana-Monitoring/blob/master/Images/CloudWatchDashboard/NetworkStats.jpg "NetworkStats")

:three: Network Out
Grafana here has been configured with the AWS EC2 instance running in us-west-1 region to simulate a speedometer effect for Network out cloudwatch mertric for the EC2 instance. It helps us gives the representation of the network monitoring for the instance and easy display on the dashboard. These values dynamically change as out increases/decreses and gives great effect of value increasing/decreasing

![alt text](https://github.com/grv231/Grafana-Monitoring/blob/master/Images/CloudWatchDashboard/NetworkOut.jpg "NetworkOut")


 
