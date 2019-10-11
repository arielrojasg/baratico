<?php
    session_start();
    if(!$_SESSION['login'])
    header("Location:index.php");
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Options Admin - Responsive Web Application Kit</title>

        <!-- ========== COMMON STYLES ========== -->
        <link rel="stylesheet" href="css/bootstrap.min.css" media="screen" >
        <link rel="stylesheet" href="css/font-awesome.min.css" media="screen" >
        <link rel="stylesheet" href="css/animate-css/animate.min.css" media="screen" >
        <link rel="stylesheet" href="css/lobipanel/lobipanel.min.css" media="screen" >

        <!-- ========== PAGE STYLES ========== -->
        <link rel="stylesheet" href="css/prism/prism.css" media="screen" > <!-- USED FOR DEMO HELP - YOU CAN REMOVE IT -->
        <link rel="stylesheet" type="text/css" href="js/DataTables/datatables.min.css"/>

        <!-- ========== THEME CSS ========== -->
        <link rel="stylesheet" href="css/main.css" media="screen" >

        <!-- ========== MODERNIZR ========== -->
        <script src="js/modernizr/modernizr.min.js"></script>
    </head>
    <body class="top-navbar-fixed">
        <div class="main-wrapper">

            <!-- ========== TOP NAVBAR ========== -->
            <?php include('top-navbar.php'); ?>

            <!-- ========== WRAPPER FOR BOTH SIDEBARS & MAIN CONTENT ========== -->
            <div class="content-wrapper">
                <div class="content-container">

                    <!-- ========== LEFT SIDEBAR ========== -->
                    <?php include('left-sidebar.php'); ?>

                    <div class="main-page">
                        <div class="container-fluid">
                            <div class="row page-title-div">
                                <div class="col-md-6">
                                    <h2 class="title">Charts - Pie Chart</h2>
                                    <p class="sub-title">One stop solution for perfect admin dashboard!</p>
                                </div>
                            </div>
                            <!-- /.row -->
                            <div class="row breadcrumb-div">
                                <div class="col-md-6">
                                    <ul class="breadcrumb">
            							<li><a href="index.html"><i class="fa fa-home"></i> Home</a></li>
            							<li class="active">Charts - Pie Chart</li>
            						</ul>
                                </div>
                                <!-- /.col-md-6 -->
                                <div class="col-md-6 text-right">
                                    <a href="#"><i class="fa fa-comments"></i> Talk to us</a>
                                    <a href="#" class="pl-20"><i class="fa fa-cog"></i> Settings</a>
                                </div>
                                <!-- /.col-md-6 -->
                            </div>
                            <!-- /.row -->
                        </div>
                        <!-- /.container-fluid -->

                        <section class="section">
                            <div class="container-fluid">

                                <div class="row">
                                    <div class="col-md-8 col-md-offset-2">
                                        <div class="alert alert-info" role="alert">
                                            <strong>amCharts!</strong> Programming libraries and tools for all your data visualization needs. For official documentation, <a href="https://www.amcharts.com/" target="_blank" class=" ml-5"><i class="fa fa-hand-o-right"></i> click here <i class="fa fa-hand-o-left"></i></a>.
                                        </div>
                                        <!-- /.alert alert-info -->
                                    </div>
                                    <!-- /.col-md-12 -->
                                </div>
                                <!-- /.row -->

                                <div class="row">
                                    <div class="col-md-8 col-md-offset-2">

                                        <div class="panel border-primary no-border border-3-top" >
                                            <div class="panel-heading">
                                                <div class="panel-title">
                                                    <h5>Simple Pie Chart</h5>
                                                </div>
                                            </div>
                                            <div class="panel-body p-20">

                                                <div id="chart1" class="op-chart"></div>

                                            </div>
                                        </div>
                                    </div>
                                    <!-- /.col-md-6 -->

                                    <div class="col-md-8 col-md-offset-2">

                                        <div class="panel">
                                            <div class="panel-heading">
                                                <div class="panel-title">
                                                    <h5>Donut with radial gradient</h5>
                                                </div>
                                            </div>
                                            <div class="panel-body p-20">

                                                <div id="chart2" class="op-chart"></div>

                                                <!-- /.col-md-12 -->
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /.col-md-6 -->

                                    <div class="col-md-8 col-md-offset-2">

                                        <div class="panel">
                                            <div class="panel-heading">
                                                <div class="panel-title">
                                                    <h5>Animated Time-Line Pie Chart</h5>
                                                </div>
                                            </div>
                                            <div class="panel-body p-20">

                                                <div id="chart3" class="op-chart"></div>

                                            </div>
                                        </div>
                                    </div>
                                    <!-- /.col-md-6 -->

                                    <div class="col-md-8 col-md-offset-2">

                                        <div class="panel">
                                            <div class="panel-heading">
                                                <div class="panel-title">
                                                    <h5>3D Pie Chart</h5>
                                                </div>
                                            </div>
                                            <div class="panel-body p-20">

                                                <div id="chart4" class="op-chart"></div>
                                                
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /.col-md-6 -->

                                    <div class="col-md-8 col-md-offset-2">

                                        <div class="panel">
                                            <div class="panel-heading">
                                                <div class="panel-title">
                                                    <h5>3D Donut Chart</h5>
                                                </div>
                                            </div>
                                            <div class="panel-body p-20">

                                                <div id="chart5" class="op-chart"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /.col-md-6 -->

                                </div>
                                <!-- /.row -->

                            </div>
                            <!-- /.container-fluid -->
                        </section>
                        <!-- /.section -->
                    </div>
                    <!-- /.main-page -->

                    <div class="right-sidebar bg-white fixed-sidebar">
                        <div class="sidebar-content">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-12">
                                        <h4>Useful Sidebar <i class="fa fa-times close-icon"></i></h4>
                                        <p>Code for help is added within the main page. Check for code below the example.</p>
                                        <p>You can use this sidebar to help your end-users. You can enter any HTML in this sidebar.</p>
                                        <p>This sidebar can be a 'fixed to top' or you can unpin it to scroll with main page.</p>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                    </div>
                                    <!-- /.col-md-12 -->

                                    <div class="text-center mt-20">
                                        <button type="button" class="btn btn-success btn-labeled">Purchase Now<span class="btn-label btn-label-right"><i class="fa fa-check"></i></span></button>
                                    </div>
                                    <!-- /.text-center -->
                                </div>
                                <!-- /.row -->
                            </div>
                            <!-- /.container-fluid -->
                        </div>
                        <!-- /.sidebar-content -->
                    </div>
                    <!-- /.right-sidebar -->

                </div>
                <!-- /.content-container -->
            </div>
            <!-- /.content-wrapper -->

        </div>
        <!-- /.main-wrapper -->

        <!-- ========== COMMON JS FILES ========== -->
        <script src="js/jquery/jquery-2.2.4.min.js"></script>
        <script src="js/bootstrap/bootstrap.min.js"></script>
        <script src="js/pace/pace.min.js"></script>
        <script src="js/lobipanel/lobipanel.min.js"></script>
        <script src="js/iscroll/iscroll.js"></script>

        <!-- ========== PAGE JS FILES ========== -->
        <script src="js/prism/prism.js"></script>
        
        <script src="https://www.amcharts.com/lib/4/core.js"></script>
        <script src="https://www.amcharts.com/lib/4/charts.js"></script> 
        <script src="js/amcharts/amcharts.js"></script>
        <script src="js/amcharts/serial.js"></script>
        <script src="js/amcharts/pie.js"></script>
        <script src="js/amcharts/plugins/animate/animate.min.js"></script>
        <script src="js/amcharts/plugins/export/export.min.js"></script>
        <link rel="stylesheet" href="js/amcharts/plugins/export/export.css" type="text/css" media="all" />
        <script src="js/amcharts/themes/light.js"></script>

        <!-- ========== THEME JS ========== -->
        <script src="js/main.js"></script>
        <script>
            $(function($) {
              /*
                // chart1
                var chart1 = AmCharts.makeChart( "chart1", {
                  "type": "pie",
                  "theme": "light",
                  "fontFamily": "Poppins",
                  "dataProvider": [ {
                    "country": "Lithuania",
                    "litres": 501.9
                  }, {
                    "country": "Czech Republic",
                    "litres": 301.9
                  }, {
                    "country": "Ireland",
                    "litres": 201.1
                  }, {
                    "country": "Germany",
                    "litres": 165.8
                  }, {
                    "country": "Australia",
                    "litres": 139.9
                  }, {
                    "country": "Austria",
                    "litres": 128.3
                  }, {
                    "country": "UK",
                    "litres": 99
                  }, {
                    "country": "Belgium",
                    "litres": 60
                  }, {
                    "country": "The Netherlands",
                    "litres": 50
                  } ],
                  "valueField": "litres",
                  "titleField": "country",
                   "balloon":{
                   "fixedPosition":true
                  },
                  "export": {
                    "enabled": true
                  }
                } );*/

                var chart1 = am4core.create("chart1", am4charts.PieChart);

                // Add data
                chart1.dataSource.url = "servicios.csv";
                chart1.dataSource.parser = new am4core.CSVParser();
                chart1.dataSource.parser.options.useColumnNames = true;

                // Add and configure Series
                var pieSeries = chart1.series.push(new am4charts.PieSeries());
                pieSeries.dataFields.value = "Valor";
                pieSeries.dataFields.category = "Servicio";

                // Let's cut a hole in our Pie chart the size of 40% the radius
                chart1.innerRadius = am4core.percent(40);

                // Put a thick white border around each Slice
                pieSeries.slices.template.stroke = am4core.color("#4a2abb");
                pieSeries.slices.template.strokeWidth = 2;
                pieSeries.slices.template.strokeOpacity = 1;


                // Add a legend
                chart1.legend = new am4charts.Legend();
                

                // chart2
                /*var chart2 = AmCharts.makeChart("chart2", {
                    "type": "pie",
                    "theme": "light",
                    "fontFamily": "Poppins",
                    "innerRadius": "40%",
                    "gradientRatio": [-0.4, -0.4, -0.4, -0.4, -0.4, -0.4, 0, 0.1, 0.2, 0.1, 0, -0.2, -0.5],
                    "dataProvider": [{
                        "country": "Lithuania",
                        "litres": 501.9
                    }, {
                        "country": "Czech Republic",
                        "litres": 301.9
                    }, {
                        "country": "Ireland",
                        "litres": 201.1
                    }, {
                        "country": "Germany",
                        "litres": 165.8
                    }, {
                        "country": "Australia",
                        "litres": 139.9
                    }, {
                        "country": "Austria",
                        "litres": 128.3
                    }],
                    "balloonText": "[[value]]",
                    "valueField": "litres",
                    "titleField": "country",
                    "balloon": {
                        "drop": true,
                        "adjustBorderColor": false,
                        "color": "#FFFFFF",
                        "fontSize": 16
                    },
                    "export": {
                        "enabled": true
                    }
                });*/
                var chart2 = am4core.create("chart2", am4charts.PieChart3D);

                // Add data
                chart2.dataSource.url = "servicios.csv";
                chart2.dataSource.parser = new am4core.CSVParser();
                chart2.dataSource.parser.options.useColumnNames = true;

                // Add and configure Series
                var pieSeries = chart2.series.push(new am4charts.PieSeries3D());
                pieSeries.dataFields.value = "Valor";
                pieSeries.dataFields.category = "Servicio";

                // Let's cut a hole in our Pie chart the size of 40% the radius
                chart2.innerRadius = am4core.percent(40);

                // Put a thick white border around each Slice
                pieSeries.slices.template.stroke = am4core.color("#4a2abb");
                pieSeries.slices.template.strokeWidth = 2;
                pieSeries.slices.template.strokeOpacity = 1;


                // Add a legend
                chart2.legend = new am4charts.Legend();

                // Chart 3
                /**
                 * Define data for each year
                 */
                var chartData = {
                  "1995": [
                    { "sector": "Agriculture", "size": 6.6 },
                    { "sector": "Mining and Quarrying", "size": 0.6 },
                    { "sector": "Manufacturing", "size": 23.2 },
                    { "sector": "Electricity and Water", "size": 2.2 },
                    { "sector": "Construction", "size": 4.5 },
                    { "sector": "Trade (Wholesale, Retail, Motor)", "size": 14.6 },
                    { "sector": "Transport and Communication", "size": 9.3 },
                    { "sector": "Finance, real estate and business services", "size": 22.5 } ],
                  "1996": [
                    { "sector": "Agriculture", "size": 6.4 },
                    { "sector": "Mining and Quarrying", "size": 0.5 },
                    { "sector": "Manufacturing", "size": 22.4 },
                    { "sector": "Electricity and Water", "size": 2 },
                    { "sector": "Construction", "size": 4.2 },
                    { "sector": "Trade (Wholesale, Retail, Motor)", "size": 14.8 },
                    { "sector": "Transport and Communication", "size": 9.7 },
                    { "sector": "Finance, real estate and business services", "size": 22 } ],
                  "1997": [
                    { "sector": "Agriculture", "size": 6.1 },
                    { "sector": "Mining and Quarrying", "size": 0.2 },
                    { "sector": "Manufacturing", "size": 20.9 },
                    { "sector": "Electricity and Water", "size": 1.8 },
                    { "sector": "Construction", "size": 4.2 },
                    { "sector": "Trade (Wholesale, Retail, Motor)", "size": 13.7 },
                    { "sector": "Transport and Communication", "size": 9.4 },
                    { "sector": "Finance, real estate and business services", "size": 22.1 } ],
                  "1998": [
                    { "sector": "Agriculture", "size": 6.2 },
                    { "sector": "Mining and Quarrying", "size": 0.3 },
                    { "sector": "Manufacturing", "size": 21.4 },
                    { "sector": "Electricity and Water", "size": 1.9 },
                    { "sector": "Construction", "size": 4.2 },
                    { "sector": "Trade (Wholesale, Retail, Motor)", "size": 14.5 },
                    { "sector": "Transport and Communication", "size": 10.6 },
                    { "sector": "Finance, real estate and business services", "size": 23 } ],
                  "1999": [
                    { "sector": "Agriculture", "size": 5.7 },
                    { "sector": "Mining and Quarrying", "size": 0.2 },
                    { "sector": "Manufacturing", "size": 20 },
                    { "sector": "Electricity and Water", "size": 1.8 },
                    { "sector": "Construction", "size": 4.4 },
                    { "sector": "Trade (Wholesale, Retail, Motor)", "size": 15.2 },
                    { "sector": "Transport and Communication", "size": 10.5 },
                    { "sector": "Finance, real estate and business services", "size": 24.7 } ],
                  "2000": [
                    { "sector": "Agriculture", "size": 5.1 },
                    { "sector": "Mining and Quarrying", "size": 0.3 },
                    { "sector": "Manufacturing", "size": 20.4 },
                    { "sector": "Electricity and Water", "size": 1.7 },
                    { "sector": "Construction", "size": 4 },
                    { "sector": "Trade (Wholesale, Retail, Motor)", "size": 16.3 },
                    { "sector": "Transport and Communication", "size": 10.7 },
                    { "sector": "Finance, real estate and business services", "size": 24.6 } ],
                  "2001": [
                    { "sector": "Agriculture", "size": 5.5 },
                    { "sector": "Mining and Quarrying", "size": 0.2 },
                    { "sector": "Manufacturing", "size": 20.3 },
                    { "sector": "Electricity and Water", "size": 1.6 },
                    { "sector": "Construction", "size": 3.1 },
                    { "sector": "Trade (Wholesale, Retail, Motor)", "size": 16.3 },
                    { "sector": "Transport and Communication", "size": 10.7 },
                    { "sector": "Finance, real estate and business services", "size": 25.8 } ],
                  "2002": [
                    { "sector": "Agriculture", "size": 5.7 },
                    { "sector": "Mining and Quarrying", "size": 0.2 },
                    { "sector": "Manufacturing", "size": 20.5 },
                    { "sector": "Electricity and Water", "size": 1.6 },
                    { "sector": "Construction", "size": 3.6 },
                    { "sector": "Trade (Wholesale, Retail, Motor)", "size": 16.1 },
                    { "sector": "Transport and Communication", "size": 10.7 },
                    { "sector": "Finance, real estate and business services", "size": 26 } ],
                  "2003": [
                    { "sector": "Agriculture", "size": 4.9 },
                    { "sector": "Mining and Quarrying", "size": 0.2 },
                    { "sector": "Manufacturing", "size": 19.4 },
                    { "sector": "Electricity and Water", "size": 1.5 },
                    { "sector": "Construction", "size": 3.3 },
                    { "sector": "Trade (Wholesale, Retail, Motor)", "size": 16.2 },
                    { "sector": "Transport and Communication", "size": 11 },
                    { "sector": "Finance, real estate and business services", "size": 27.5 } ],
                  "2004": [
                    { "sector": "Agriculture", "size": 4.7 },
                    { "sector": "Mining and Quarrying", "size": 0.2 },
                    { "sector": "Manufacturing", "size": 18.4 },
                    { "sector": "Electricity and Water", "size": 1.4 },
                    { "sector": "Construction", "size": 3.3 },
                    { "sector": "Trade (Wholesale, Retail, Motor)", "size": 16.9 },
                    { "sector": "Transport and Communication", "size": 10.6 },
                    { "sector": "Finance, real estate and business services", "size": 28.1 } ],
                  "2005": [
                    { "sector": "Agriculture", "size": 4.3 },
                    { "sector": "Mining and Quarrying", "size": 0.2 },
                    { "sector": "Manufacturing", "size": 18.1 },
                    { "sector": "Electricity and Water", "size": 1.4 },
                    { "sector": "Construction", "size": 3.9 },
                    { "sector": "Trade (Wholesale, Retail, Motor)", "size": 15.7 },
                    { "sector": "Transport and Communication", "size": 10.6 },
                    { "sector": "Finance, real estate and business services", "size": 29.1 } ],
                  "2006": [
                    { "sector": "Agriculture", "size": 4 },
                    { "sector": "Mining and Quarrying", "size": 0.2 },
                    { "sector": "Manufacturing", "size": 16.5 },
                    { "sector": "Electricity and Water", "size": 1.3 },
                    { "sector": "Construction", "size": 3.7 },
                    { "sector": "Trade (Wholesale, Retail, Motor)", "size": 14.2 },
                    { "sector": "Transport and Communication", "size": 12.1 },
                    { "sector": "Finance, real estate and business services", "size": 29.1 } ],
                  "2007": [
                    { "sector": "Agriculture", "size": 4.7 },
                    { "sector": "Mining and Quarrying", "size": 0.2 },
                    { "sector": "Manufacturing", "size": 16.2 },
                    { "sector": "Electricity and Water", "size": 1.2 },
                    { "sector": "Construction", "size": 4.1 },
                    { "sector": "Trade (Wholesale, Retail, Motor)", "size": 15.6 },
                    { "sector": "Transport and Communication", "size": 11.2 },
                    { "sector": "Finance, real estate and business services", "size": 30.4 } ],
                  "2008": [
                    { "sector": "Agriculture", "size": 4.9 },
                    { "sector": "Mining and Quarrying", "size": 0.3 },
                    { "sector": "Manufacturing", "size": 17.2 },
                    { "sector": "Electricity and Water", "size": 1.4 },
                    { "sector": "Construction", "size": 5.1 },
                    { "sector": "Trade (Wholesale, Retail, Motor)", "size": 15.4 },
                    { "sector": "Transport and Communication", "size": 11.1 },
                    { "sector": "Finance, real estate and business services", "size": 28.4 } ],
                  "2009": [
                    { "sector": "Agriculture", "size": 4.7 },
                    { "sector": "Mining and Quarrying", "size": 0.3 },
                    { "sector": "Manufacturing", "size": 16.4 },
                    { "sector": "Electricity and Water", "size": 1.9 },
                    { "sector": "Construction", "size": 4.9 },
                    { "sector": "Trade (Wholesale, Retail, Motor)", "size": 15.5 },
                    { "sector": "Transport and Communication", "size": 10.9 },
                    { "sector": "Finance, real estate and business services", "size": 27.9 } ],
                  "2010": [
                    { "sector": "Agriculture", "size": 4.2 },
                    { "sector": "Mining and Quarrying", "size": 0.3 },
                    { "sector": "Manufacturing", "size": 16.2 },
                    { "sector": "Electricity and Water", "size": 2.2 },
                    { "sector": "Construction", "size": 4.3 },
                    { "sector": "Trade (Wholesale, Retail, Motor)", "size": 15.7 },
                    { "sector": "Transport and Communication", "size": 10.2 },
                    { "sector": "Finance, real estate and business services", "size": 28.8 } ],
                  "2011": [
                    { "sector": "Agriculture", "size": 4.1 },
                    { "sector": "Mining and Quarrying", "size": 0.3 },
                    { "sector": "Manufacturing", "size": 14.9 },
                    { "sector": "Electricity and Water", "size": 2.3 },
                    { "sector": "Construction", "size": 5 },
                    { "sector": "Trade (Wholesale, Retail, Motor)", "size": 17.3 },
                    { "sector": "Transport and Communication", "size": 10.2 },
                    { "sector": "Finance, real estate and business services", "size": 27.2 } ],
                  "2012": [
                    { "sector": "Agriculture", "size": 3.8 },
                    { "sector": "Mining and Quarrying", "size": 0.3 },
                    { "sector": "Manufacturing", "size": 14.9 },
                    { "sector": "Electricity and Water", "size": 2.6 },
                    { "sector": "Construction", "size": 5.1 },
                    { "sector": "Trade (Wholesale, Retail, Motor)", "size": 15.8 },
                    { "sector": "Transport and Communication", "size": 10.7 },
                    { "sector": "Finance, real estate and business services", "size": 28 } ],
                  "2013": [
                    { "sector": "Agriculture", "size": 3.7 },
                    { "sector": "Mining and Quarrying", "size": 0.2 },
                    { "sector": "Manufacturing", "size": 14.9 },
                    { "sector": "Electricity and Water", "size": 2.7 },
                    { "sector": "Construction", "size": 5.7 },
                    { "sector": "Trade (Wholesale, Retail, Motor)", "size": 16.5 },
                    { "sector": "Transport and Communication", "size": 10.5 },
                    { "sector": "Finance, real estate and business services", "size": 26.6 } ],
                  "2014": [
                    { "sector": "Agriculture", "size": 3.9 },
                    { "sector": "Mining and Quarrying", "size": 0.2 },
                    { "sector": "Manufacturing", "size": 14.5 },
                    { "sector": "Electricity and Water", "size": 2.7 },
                    { "sector": "Construction", "size": 5.6 },
                    { "sector": "Trade (Wholesale, Retail, Motor)", "size": 16.6 },
                    { "sector": "Transport and Communication", "size": 10.5 },
                    { "sector": "Finance, real estate and business services", "size": 26.5 } ]
                };


                /**
                 * Create the chart
                 */
                var currentYear = 1995;
                var chart3 = AmCharts.makeChart( "chart3", {
                  "type": "pie",
                  "theme": "light",
                  "fontFamily": "Poppins",
                  "dataProvider": [],
                  "valueField": "size",
                  "titleField": "sector",
                  "startDuration": 0,
                  "innerRadius": 80,
                  "pullOutRadius": 20,
                  "marginTop": 30,
                  "titles": [{
                    "text": "South African Economy"
                  }],
                  "allLabels": [{
                    "y": "54%",
                    "align": "center",
                    "size": 25,
                    "bold": true,
                    "text": "1995",
                    "color": "#555"
                  }, {
                    "y": "49%",
                    "align": "center",
                    "size": 15,
                    "text": "Year",
                    "color": "#555"
                  }],
                  "listeners": [ {
                    "event": "init",
                    "method": function( e ) {
                      var chart = e.chart;

                      function getCurrentData() {
                        var data = chartData[currentYear];
                        currentYear++;
                        if (currentYear > 2014)
                          currentYear = 1995;
                        return data;
                      }

                      function loop() {
                        chart.allLabels[0].text = currentYear;
                        var data = getCurrentData();
                        chart.animateData( data, {
                          duration: 1000,
                          complete: function() {
                            setTimeout( loop, 3000 );
                          }
                        } );
                      }

                      loop();
                    }
                  } ],
                   "export": {
                   "enabled": true
                  }
                } );

                // Chart 4
                var chart4 = AmCharts.makeChart( "chart4", {
                  "type": "pie",
                  "theme": "light",
                  "fontFamily": "Poppins",
                  "dataProvider": [ {
                    "country": "Lithuania",
                    "value": 260
                  }, {
                    "country": "Ireland",
                    "value": 201
                  }, {
                    "country": "Germany",
                    "value": 65
                  }, {
                    "country": "Australia",
                    "value": 39
                  }, {
                    "country": "UK",
                    "value": 19
                  }, {
                    "country": "Latvia",
                    "value": 10
                  } ],
                  "valueField": "value",
                  "titleField": "country",
                  "outlineAlpha": 0.4,
                  "depth3D": 15,
                  "balloonText": "[[title]]<br><span style='font-size:14px'><b>[[value]]</b> ([[percents]]%)</span>",
                  "angle": 30,
                  "export": {
                    "enabled": true
                  }
                } );

                // Chart 5
                var chart5 = AmCharts.makeChart( "chart5", {
                  "type": "pie",
                  "theme": "light",
                  "fontFamily": "Poppins",
                  "titles": [ {
                    "text": "Visitors countries",
                    "size": 16
                  } ],
                  "dataProvider": [ {
                    "country": "United States",
                    "visits": 7252
                  }, {
                    "country": "China",
                    "visits": 3882
                  }, {
                    "country": "Japan",
                    "visits": 1809
                  }, {
                    "country": "Germany",
                    "visits": 1322
                  }, {
                    "country": "United Kingdom",
                    "visits": 1122
                  }, {
                    "country": "France",
                    "visits": 414
                  }, {
                    "country": "India",
                    "visits": 384
                  }, {
                    "country": "Spain",
                    "visits": 211
                  } ],
                  "valueField": "visits",
                  "titleField": "country",
                  "startEffect": "elastic",
                  "startDuration": 2,
                  "labelRadius": 15,
                  "innerRadius": "50%",
                  "depth3D": 10,
                  "balloonText": "[[title]]<br><span style='font-size:14px'><b>[[value]]</b> ([[percents]]%)</span>",
                  "angle": 15,
                  "export": {
                    "enabled": true
                  }
                } );
            });
        </script>

        <!-- ========== ADD custom.js FILE BELOW WITH YOUR CHANGES ========== -->

    </body>
</html>
