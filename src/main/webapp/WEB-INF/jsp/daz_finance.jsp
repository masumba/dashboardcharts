<div id="chartContainer2" style="height: 370px; max-width: 920px; margin: 0px auto;"></div>

<script type="text/javascript">
$(document).ready(function(){
	var chart = new CanvasJS.Chart("chartContainer2", {animationEnabled: true,title:{text: "Milk Sales - Mutaba"},
	    axisX:{valueFormatString: "DD MMM",crosshair: {enabled: true,snapToDataPoint: true}},
	    axisY: {title: "Milk Volumes Sold in ZMW",includeZero: false,valueFormatString: "$##0.00",crosshair: {enabled: true,snapToDataPoint: true,labelFormatter: function(e) {return "$" + CanvasJS.formatNumber(e.value, "##0.00");}}
	    },
	    data: [{type: "area",xValueFormatString: "DD MMM",yValueFormatString: "$##0.00",
	        dataPoints: [
	            { x: new Date(2016, 01, 01), y: 76.727997 },{ x: new Date(2016, 02, 01), y: 75.459999 },{ x: new Date(2016, 03, 01), y: 76.011002 },{ x: new Date(2016, 04, 01), y: 75.751999 },
	            { x: new Date(2016, 05, 01), y: 77.500000 },{ x: new Date(2016, 06, 01), y: 77.436996 },{ x: new Date(2016, 07, 01), y: 79.650002 },{ x: new Date(2016, 08, 01), y: 79.750999 },{ x: new Date(2016, 09, 01), y: 80.169998 },{ x: new Date(2016, 10, 01), y: 79.570000 },{ x: new Date(2016, 11, 01), y: 80.699997 },{ x: new Date(2016, 12, 01), y: 79.686996 }
	        ]
	    }]
	});
	chart.render();
});
</script>