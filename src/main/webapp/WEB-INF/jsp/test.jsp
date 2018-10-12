<script src="assets/js/canvasjs.min.js"></script>
<script src="assets/js/jquery.min.js"></script>

<div id="chartContainerToday" style="height: 370px; max-width: 920px; margin: 0px auto;"></div>
<div id="chartContainerWeek" style="height: 370px; max-width: 920px; margin: 0px auto;"></div>
<div id="chartContainerMonth" style="height: 370px; max-width: 920px; margin: 0px auto;"></div>
<script type="text/javascript">
    /*Today*/
    function loadTodaysData(){
        /**/
        $(document).ready(function(){

            /*Country*/
            var dataPoints = [];
            var chart = new CanvasJS.Chart("chartContainerToday", {
                animationEnabled: true,theme: "light2",title:{text: "Todays Milk Collections"},axisY: {title: "Milk Collected in Litres"},
                data: [{ type: "column", legendText: "Litres Collected",yValueFormatString: "#,##0.## Litres",click: onClickMcc,
                    dataPoints: dataPoints
                }]
            });
            chart.render();

            function addData(data){

                for (var i=0;i<data.length;i++){

                    dataPoints.push({
                        y: data[i].total, label: "Zambia"
                    });

                }
                chart.render();

            }

            $.getJSON("http://localhost:8082/api/sales/daily/total",addData);
            /**/
            function onClickMcc(e){todaysMccs();}
            /**/

            /*MCCs*/
            function todaysMccs(){
                var dataPoints = [];
                var chart = new CanvasJS.Chart("chartContainerToday", {
                    animationEnabled: true,exportEnabled: true,theme: "light2",
                    title:{text: "Todays MCC Milk Collections"},
                    axisY: {title: "Milk Collected in Litres"},
                    data: [{type: "column",name: "Milk Collected",yValueFormatString: "#,##0.## Litres",click: onClickFarmers,
                        dataPoints: dataPoints
                    }]
                });
                chart.render();

                function addData(data){

                    for (var i=0;i<data.length;i++){

                        dataPoints.push({
                            y: data[i].total, label: data[i].aggregation_point_name

                        });

                    }
                    chart.render();

                }

                $.getJSON("http://localhost:8082/api/sales/daily/total/ap/all/",addData);

                /**/
                function onClickFarmers(e){todaysFarmers(e.dataPoint.label);}
                /**/

                /*Farmers*/
                function todaysFarmers(data){
                    var dataPoints = [];
                    var chart = new CanvasJS.Chart("chartContainerToday", {animationEnabled: true,
                        title:{text: data+" Farmer Milk Deposits Today", fontFamily: "arial black"},
                        axisY:{valueFormatString:"#0 Ltr",gridColor: "#B6B1A8",tickColor: "#B6B1A8"
                        },
                        toolTip: {shared: true,content: toolTipContent},
                        data: [{type: "stackedColumn",showInLegend: true,name: "Milk Delivered",
                            dataPoints: dataPoints
                            }]
                    });
                    chart.render();

                    function addData(data){

                        for (var i=0;i<data.length;i++){

                            dataPoints.push({
                                y: data[i].total, label: data[i].farmerName


                            });

                        }
                        chart.render();

                    }

                    $.getJSON("http://localhost:8082/api/sales/daily/total/ap/"+data+"/farmer",addData);

                    function toolTipContent(e) {
                        var str = "";
                        var total = 0;
                        var str2, str3;
                        for (var i = 0; i < e.entries.length; i++){
                            var  str1 = "<span> "+e.entries[i].dataSeries.name+"</span>: <strong>"+e.entries[i].dataPoint.y+"</strong> Litres<br/>";
                            total = e.entries[i].dataPoint.y + total;
                            str = str.concat(str1);
                        }
                        str2 = "<span style = 'color:DodgerBlue;'><strong>"+(e.entries[0].dataPoint.label)+"</strong></span><br/>";
                        total = Math.round(total * 100) / 100;
                         
                        return (str2.concat(str)) ;
                    }
                }
                /*Farmers*/

            }
            /*MCCs*/

        });
        /**/
    }

    /*Week*/
    function loadWeeksData(){
        /**/
        $(document).ready(function(){

            /*Country*/
            var dataPoints = [];
            var chart = new CanvasJS.Chart("chartContainerWeek", {
                animationEnabled: true,theme: "light2",title:{text: "This Weeks Milk Collections"},axisY: {title: "Milk Collected in Litres"},
                data: [{ type: "column", legendText: "Litres Collected",yValueFormatString: "#,##0.## Litres",click: onClickWeekMcc,
                    dataPoints: dataPoints
                }]
            });
            chart.render();

            function addData(data){

                for (var i=0;i<data.length;i++){

                    dataPoints.push({
                        y: data[i].total, label: "Zambia"
                    });

                }
                chart.render();

            }

            $.getJSON("http://localhost:8082/api/sales/weekly/total",addData);

            /**/
            function onClickWeekMcc(e){WeeksMccs();}
            /**/

            /*MCCs*/
            function WeeksMccs(){
                var dataPoints = [];
                var chart = new CanvasJS.Chart("chartContainerWeek", {
                    animationEnabled: true,exportEnabled: true,theme: "light2",title:{text: "This Weeks MCC Milk Collections"},axisY: {title: "Milk Collected in Litres"},
                    data: [{type: "column",name: "Milk Collected",yValueFormatString: "#,##0.## Litres",click: onClickWeekFarmers,
                        dataPoints: dataPoints
                    }]
                });
                chart.render();

                function addData(data){

                    for (var i=0;i<data.length;i++){

                        dataPoints.push({
                            y: data[i].total, label: data[i].aggregation_point_name
                        });

                    }
                    chart.render();

                }

                $.getJSON("http://localhost:8082/api/sales/weekly/total/ap/all/",addData);
                /**/
                function onClickWeekFarmers(e){ WeeksFarmers(e.dataPoint.label);}
                /**/

                /*Farmers*/
                function WeeksFarmers(data){
                    var dataPoints = [];
                    var chart = new CanvasJS.Chart("chartContainerWeek", {animationEnabled: true,title:{text: data+" Farmer Milk Deposits This Week", fontFamily: "arial black"},
                        axisY:{valueFormatString:"#0 Ltr",gridColor: "#B6B1A8",tickColor: "#B6B1A8"
                        },
                        toolTip: {shared: true,content: toolTipContent},
                        data: [{type: "stackedColumn",showInLegend: true,name: "Milk Delivered",
                            dataPoints: dataPoints
                            }]
                    });
                    chart.render();

                    function addData(data){

                        for (var i=0;i<data.length;i++){

                            dataPoints.push({
                                y: data[i].total, label: data[i].farmerName
                            });

                        }
                        chart.render();

                    }

                    $.getJSON("http://localhost:8082/api/sales/weekly/total/ap/"+data+"/farmer",addData);

                    function toolTipContent(e) {
                        var str = "";
                        var total = 0;
                        var str2, str3;
                        for (var i = 0; i < e.entries.length; i++){
                            var  str1 = "<span> "+e.entries[i].dataSeries.name+"</span>: <strong>"+e.entries[i].dataPoint.y+"</strong> Litres<br/>";
                            total = e.entries[i].dataPoint.y + total;
                            str = str.concat(str1);
                        }
                        str2 = "<span style = 'color:DodgerBlue;'><strong>"+(e.entries[0].dataPoint.label)+"</strong></span><br/>";
                        total = Math.round(total * 100) / 100;
                         
                        return (str2.concat(str)) ;
                    }
                }
                /*Farmers*/

            }
            /*MCCs*/

        });
        /**/
    }

    /*Month*/
    function loadMonthsData(){
        /**/
        $(document).ready(function(){

            /*Country*/
            var dataPoints = [];
            var chart = new CanvasJS.Chart("chartContainerMonth", {
                animationEnabled: true,theme: "light2",title:{text: "This Months Milk Collections"},axisY: {title: "Milk Collected in Litres"},
                data: [{ type: "column", legendText: "Litres Collected",yValueFormatString: "#,##0.## Litres",click: onClickMonthMcc,
                    //dataPoints: [{ y: 300878, label: "Zambia" }]
                    dataPoints: dataPoints
                }]
            });
            chart.render();

            function addData(data){

                for (var i=0;i<data.length;i++){

                    dataPoints.push({
                        y: data[i].total, label: "Zambia"
                    });

                }
                chart.render();

            }

            $.getJSON("http://localhost:8082/api/sales/monthly/total",addData);

            /**/
            function onClickMonthMcc(e){MonthsMccs();}
            /**/

            /*MCCs*/
            function MonthsMccs(){
                var dataPoints = [];
                var chart = new CanvasJS.Chart("chartContainerMonth", {
                    animationEnabled: true,exportEnabled: true,theme: "light2",title:{text: "This Months MCC Milk Collections"},axisY: {title: "Milk Collected in Litres"},
                    data: [{type: "column",name: "Milk Collected",yValueFormatString: "#,##0.## Litres",click: onClickMonthFarmers,
                        dataPoints: dataPoints
                    }]
                });
                chart.render();

                function addData(data){

                    for (var i=0;i<data.length;i++){

                        dataPoints.push({
                            y: data[i].total, label: data[i].aggregation_point_name
                        });

                    }
                    chart.render();

                }

                $.getJSON("http://localhost:8082/api/sales/monthly/total/ap/all/",addData);
                /**/
                function onClickMonthFarmers(e){ MonthsFarmers(e.dataPoint.label);}
                /**/

                /*Farmers*/
                function MonthsFarmers(data){
                    var dataPoints = [];
                    var chart = new CanvasJS.Chart("chartContainerMonth", {animationEnabled: true,title:{text: data+" Farmer Milk Deposits This Month", fontFamily: "arial black"},
                        axisY:{valueFormatString:"#0 Ltr",gridColor: "#B6B1A8",tickColor: "#B6B1A8"
                        },
                        toolTip: {shared: true,content: toolTipContent},
                        data: [{type: "stackedColumn",showInLegend: true,name: "Milk Delivered",
                            dataPoints: dataPoints
                            }]
                    });
                    chart.render();

                    function addData(data){

                        for (var i=0;i<data.length;i++){

                            dataPoints.push({
                                y: data[i].total, label: data[i].farmerName
                            });

                        }
                        chart.render();

                    }

                    $.getJSON("http://localhost:8082/api/sales/monthly/total/ap/"+data+"/farmer",addData);

                    function toolTipContent(e) {
                        var str = "";
                        var total = 0;
                        var str2, str3;
                        for (var i = 0; i < e.entries.length; i++){
                            var  str1 = "<span> "+e.entries[i].dataSeries.name+"</span>: <strong>"+e.entries[i].dataPoint.y+"</strong> Litres<br/>";
                            total = e.entries[i].dataPoint.y + total;
                            str = str.concat(str1);
                        }
                        str2 = "<span style = 'color:DodgerBlue;'><strong>"+(e.entries[0].dataPoint.label)+"</strong></span><br/>";
                        total = Math.round(total * 100) / 100;
                         
                        return (str2.concat(str)) ;
                    }
                }
                /*Farmers*/

            }
            /*MCCs*/

        });
        /**/
    }

</script>
<script type="text/javascript">
    loadTodaysData();
    loadWeeksData();
    loadMonthsData();

    setInterval(function(){
        loadTodaysData();
        loadWeeksData();
        loadMonthsData();
    },300000);
</script>