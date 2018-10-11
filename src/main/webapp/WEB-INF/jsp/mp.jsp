<div id="chartContainer" style="height: 370px; max-width: 920px; margin: 0px auto;"></div>

<script type="text/javascript">
$(document).ready(function(){
	/**/
	var dataPoints1 = [];
	var dataPoints2 = [];
	var dataPoints3 = [];

	var chart = new CanvasJS.Chart("chartContainer", {animationEnabled: true,theme: "light2",title:{text: "Milk Grade Collections"},
	    axisX:{valueFormatString: "DD MMM",crosshair: {enabled: true,snapToDataPoint: true}},
	    axisY: {title: "Number of Volumes Collected",crosshair: {enabled: true}},
	    toolTip:{shared:true},
	    legend:{cursor:"pointer",verticalAlign: "bottom",horizontalAlign: "left",dockInsidePlotArea: true,itemclick: toogleDataSeries},
	    data: [{type: "line",showInLegend: true,name: "Grade A",markerType: "square",xValueFormatString: "DD MMM, YYYY",
	        dataPoints: dataPoints1
	    },
	    {
	        type: "line",showInLegend: true,name: "Grade B",lineDashType: "dash",
	        dataPoints: dataPoints2
	    },
	    {
	        type: "line",showInLegend: true,name: "Grade C",lineDashType: "dash",
	        dataPoints: dataPoints3
	    }]
	});
	chart.render();

	function addData(data){
        for (var i=0;i<data.length;i++){

            dataPoints1.push({
                x: new Date(data[i].month),
                y: data[i].gA
            });
            dataPoints2.push({
                x: new Date(data[i].month),
                y: data[i].gB
            });
            dataPoints3.push({
                x: new Date(data[i].month),
                y: data[i].gC
            });
        }

        chart.render();
    }

	$.getJSON("http://localhost:8080/mp_country_api/all",addData);

	function toogleDataSeries(e){
	    if (typeof(e.dataSeries.visible) === "undefined" || e.dataSeries.visible) {
	        e.dataSeries.visible = false;
	    } else{
	        e.dataSeries.visible = true;
	    }
	    chart.render();
	}
	/**/
});
</script>