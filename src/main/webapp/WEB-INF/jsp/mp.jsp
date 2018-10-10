<div id="chartContainer" style="height: 370px; max-width: 920px; margin: 0px auto;"></div>

<script type="text/javascript">
$(document).ready(function(){
	/**/
	var chart = new CanvasJS.Chart("chartContainer", {animationEnabled: true,theme: "light2",title:{text: "Milk Grade Collections"},
	    axisX:{valueFormatString: "DD MMM",crosshair: {enabled: true,snapToDataPoint: true}},
	    axisY: {title: "Number of Volumes Collected",crosshair: {enabled: true}},
	    toolTip:{shared:true},
	    legend:{cursor:"pointer",verticalAlign: "bottom",horizontalAlign: "left",dockInsidePlotArea: true,itemclick: toogleDataSeries},
	    data: [{type: "line",showInLegend: true,name: "Grade A",markerType: "square",xValueFormatString: "DD MMM, YYYY",
	        dataPoints: [{ x: new Date(2017, 0, 1), y: 650 },{ x: new Date(2017, 1, 1), y: 486 },{ x: new Date(2017, 2, 1), y: 430 },
	            { x: new Date(2017, 3, 1), y: 710 },{ x: new Date(2017, 4, 1), y: 658 },{ x: new Date(2017, 5, 1), y: 734 },{ x: new Date(2017, 6, 1), y: 963 },{ x: new Date(2017, 7, 1), y: 847 }
	        ]
	    },
	    {
	        type: "line",showInLegend: true,name: "Grade B",lineDashType: "dash",
	        dataPoints: [{ x: new Date(2017, 0, 1), y: 250 },{ x: new Date(2017, 1, 1), y: 230 },{ x: new Date(2017, 2, 1), y: 230 },
	            { x: new Date(2017, 3, 1), y: 510 },{ x: new Date(2017, 4, 1), y: 258 },{ x: new Date(2017, 5, 1), y: 154 },{ x: new Date(2017, 6, 1), y: 562 },{ x: new Date(2017, 7, 1), y: 647 }
	        ]
	    },
	    {
	        type: "line",showInLegend: true,name: "Grade C",lineDashType: "dash",
	        dataPoints: [{ x: new Date(2017, 0, 1), y: 750 },{ x: new Date(2017, 1, 1), y: 300 },{ x: new Date(2017, 2, 1), y: 230 },
	            { x: new Date(2017, 3, 1), y: 850 },{ x: new Date(2017, 4, 1), y: 258 },{ x: new Date(2017, 5, 1), y: 334 },{ x: new Date(2017, 6, 1), y: 663 },{ x: new Date(2017, 7, 1), y: 447 }
	        ]
	    }]
	});
	chart.render();

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