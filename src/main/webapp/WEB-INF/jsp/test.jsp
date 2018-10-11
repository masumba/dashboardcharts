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
            var chart = new CanvasJS.Chart("chartContainerToday", {
                animationEnabled: true,theme: "light2",title:{text: "Todays Milk Collections"},axisY: {title: "Milk Collected in Litres"},
                data: [{ type: "column", legendText: "Litres Collected",yValueFormatString: "#,##0.## Litres",click: onClickMcc,
                    dataPoints: [{ y: 300878, label: "Zambia" }]
                }]
            });
            chart.render();

            /**/
            function onClickMcc(e){todaysMccs();}
            /**/

            /*MCCs*/
            function todaysMccs(){
                var chart = new CanvasJS.Chart("chartContainerToday", {
                    animationEnabled: true,exportEnabled: true,theme: "light2",
                    title:{text: "Todays MCC Milk Collections"},
                    axisY: {title: "Milk Collected in Litres"},
                    data: [{type: "column",name: "Milk Collected",yValueFormatString: "#,##0.## Litres",click: onClickFarmers,
                        dataPoints: [
                            { y: 37609.75, label: "Mutaba" },
                            { y: 75219.5, label: "Magoye" },
                            { y: 37609.75, label: "Palabana" },
                            { y: 150439, label: "Zambia" }
                        ]
                    }]
                });
                chart.render();

                /**/
                function onClickFarmers(e){todaysFarmers(e.dataPoint.label);}
                /**/

                /*Farmers*/
                function todaysFarmers(data){
                    var chart = new CanvasJS.Chart("chartContainerToday", {animationEnabled: true,
                        title:{text: data+" Farmer Milk Deposits Today", fontFamily: "arial black"},
                        axisY:{valueFormatString:"#0 Ltr",gridColor: "#B6B1A8",tickColor: "#B6B1A8"
                        },
                        toolTip: {shared: true,content: toolTipContent},
                        data: [{type: "stackedColumn",showInLegend: true,name: "Morning",
                            dataPoints: [
                                { y: 6.75, label: "John Smith" },
                                { y: 8.57, label: "John Smith" },
                                { y: 10.64, label: "John Smith" },
                                { y: 13.97, label: "John Smith" },
                                { y: 15.42, label: "John Smith" },
                                { y: 17.26, label: "John Smith" },
                                { y: 20.26, label: "John Smith" }
                            ]
                            },
                            {
                                type: "stackedColumn",showInLegend: true,name: "Afternoon",
                                dataPoints: [
                                    { y: 8.44, label: "John Smith" },
                                    { y: 10.58, label: "John Smith" },
                                    { y: 14.41, label: "John Smith" },
                                    { y: 16.86, label: "John Smith" },
                                    { y: 10.64, label: "John Smith" },
                                    { y: 21.32, label: "John Smith" },
                                    { y: 26.06, label: "John Smith" }
                                ]
                        }]
                    });
                    chart.render();

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
                        str3 = "<span style = 'color:Tomato'>Total:</span><strong> "+total+"</strong> Litres<br/>";
                        return (str2.concat(str)).concat(str3);
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
            var chart = new CanvasJS.Chart("chartContainerWeek", {
                animationEnabled: true,theme: "light2",title:{text: "This Weeks Milk Collections"},axisY: {title: "Milk Collected in Litres"},
                data: [{ type: "column", legendText: "Litres Collected",yValueFormatString: "#,##0.## Litres",click: onClickWeekMcc,
                    dataPoints: [{ y: 300878, label: "Zambia" }]
                }]
            });
            chart.render();

            /**/
            function onClickWeekMcc(e){WeeksMccs();}
            /**/

            /*MCCs*/
            function WeeksMccs(){
                var chart = new CanvasJS.Chart("chartContainerWeek", {
                    animationEnabled: true,exportEnabled: true,theme: "light2",title:{text: "This Weeks MCC Milk Collections"},axisY: {title: "Milk Collected in Litres"},
                    data: [{type: "column",name: "Milk Collected",yValueFormatString: "#,##0.## Litres",click: onClickWeekFarmers,
                        dataPoints: [
                            { y: 37609.75, label: "Mutaba" },
                            { y: 75219.5, label: "Magoye" },
                            { y: 37609.75, label: "Palabana" },
                            { y: 150439, label: "Zambia" }
                        ]
                    }]
                });
                chart.render();

                /**/
                function onClickWeekFarmers(e){ WeeksFarmers(e.dataPoint.label);}
                /**/

                /*Farmers*/
                function WeeksFarmers(data){
                    var chart = new CanvasJS.Chart("chartContainerWeek", {animationEnabled: true,title:{text: data+" Farmer Milk Deposits This Week", fontFamily: "arial black"},
                        axisY:{valueFormatString:"#0 Ltr",gridColor: "#B6B1A8",tickColor: "#B6B1A8"
                        },
                        toolTip: {shared: true,content: toolTipContent},
                        data: [{type: "stackedColumn",showInLegend: true,name: "Morning",
                            dataPoints: [
                                { y: 6.75, label: "John Smith" },
                                { y: 8.57, label: "John Smith" },
                                { y: 10.64, label: "John Smith" },
                                { y: 13.97, label: "John Smith" },
                                { y: 15.42, label: "John Smith" },
                                { y: 17.26, label: "John Smith" },
                                { y: 20.26, label: "John Smith" }
                            ]
                            },
                            {
                                type: "stackedColumn",showInLegend: true,name: "Afternoon",
                                dataPoints: [
                                    { y: 8.44, label: "John Smith" },
                                    { y: 10.58, label: "John Smith" },
                                    { y: 14.41, label: "John Smith" },
                                    { y: 16.86, label: "John Smith" },
                                    { y: 10.64, label: "John Smith" },
                                    { y: 21.32, label: "John Smith" },
                                    { y: 26.06, label: "John Smith" }
                                ]
                        }]
                    });
                    chart.render();

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
                        str3 = "<span style = 'color:Tomato'>Total:</span><strong> "+total+"</strong> Litres<br/>";
                        return (str2.concat(str)).concat(str3);
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
            var chart = new CanvasJS.Chart("chartContainerMonth", {
                animationEnabled: true,theme: "light2",title:{text: "This Months Milk Collections"},axisY: {title: "Milk Collected in Litres"},
                data: [{ type: "column", legendText: "Litres Collected",yValueFormatString: "#,##0.## Litres",click: onClickMonthMcc,
                    dataPoints: [{ y: 300878, label: "Zambia" }]
                }]
            });
            chart.render();

            /**/
            function onClickMonthMcc(e){MonthsMccs();}
            /**/

            /*MCCs*/
            function MonthsMccs(){
                var chart = new CanvasJS.Chart("chartContainerMonth", {
                    animationEnabled: true,exportEnabled: true,theme: "light2",title:{text: "This Months MCC Milk Collections"},axisY: {title: "Milk Collected in Litres"},
                    data: [{type: "column",name: "Milk Collected",yValueFormatString: "#,##0.## Litres",click: onClickMonthFarmers,
                        dataPoints: [
                            { y: 37609.75, label: "Mutaba" },
                            { y: 75219.5, label: "Magoye" },
                            { y: 37609.75, label: "Palabana" },
                            { y: 150439, label: "Zambia" }
                        ]
                    }]
                });
                chart.render();

                /**/
                function onClickMonthFarmers(e){ MonthsFarmers(e.dataPoint.label);}
                /**/

                /*Farmers*/
                function MonthsFarmers(data){
                    var chart = new CanvasJS.Chart("chartContainerMonth", {animationEnabled: true,title:{text: data+" Farmer Milk Deposits This Month", fontFamily: "arial black"},
                        axisY:{valueFormatString:"#0 Ltr",gridColor: "#B6B1A8",tickColor: "#B6B1A8"
                        },
                        toolTip: {shared: true,content: toolTipContent},
                        data: [{type: "stackedColumn",showInLegend: true,name: "Morning",
                            dataPoints: [
                                { y: 6.75, label: "John Smith" },
                                { y: 8.57, label: "John Smith" },
                                { y: 10.64, label: "John Smith" },
                                { y: 13.97, label: "John Smith" },
                                { y: 15.42, label: "John Smith" },
                                { y: 17.26, label: "John Smith" },
                                { y: 20.26, label: "John Smith" }
                            ]
                            },
                            {
                                type: "stackedColumn",showInLegend: true,name: "Afternoon",
                                dataPoints: [
                                    { y: 8.44, label: "John Smith" },
                                    { y: 10.58, label: "John Smith" },
                                    { y: 14.41, label: "John Smith" },
                                    { y: 16.86, label: "John Smith" },
                                    { y: 10.64, label: "John Smith" },
                                    { y: 21.32, label: "John Smith" },
                                    { y: 26.06, label: "John Smith" }
                                ]
                        }]
                    });
                    chart.render();

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
                        str3 = "<span style = 'color:Tomato'>Total:</span><strong> "+total+"</strong> Litres<br/>";
                        return (str2.concat(str)).concat(str3);
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