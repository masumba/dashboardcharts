<div id="chartContainer2" style="height: 370px; max-width: 920px; margin: 0px auto;"></div>

<script type="text/javascript">
$(document).ready(function(){
	var dataPoints = [];

	var chart = new CanvasJS.Chart("chartContainer2", {animationEnabled: true,title:{text: "Milk Sales - Mutaba"},
	    axisX:{valueFormatString: "DD MMM",crosshair: {enabled: true,snapToDataPoint: true}},
	    axisY: {title: "Milk Volumes Sold in ZMW",includeZero: false,valueFormatString: "ZMW ##0.00",crosshair: {enabled: true,snapToDataPoint: true,labelFormatter: function(e) {return "ZMW " + CanvasJS.formatNumber(e.value, "##0.00");}}
	    },
	    data: [{type: "area",xValueFormatString: "DD MMM",yValueFormatString: "ZMW ##0.00",
	        dataPoints: dataPoints
	    }]
	});
	chart.render();

	function addData(data){
        for (var i=0;i<data.length;i++){

            dataPoints.push({
                x: new Date(data[i].month),
                y: data[i].amount
            });
        }

        chart.render();
    }

	$.getJSON("http://localhost:8080/api/daz_finances/all",addData);

});
</script>