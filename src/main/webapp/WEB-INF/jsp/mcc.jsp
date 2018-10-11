<div id="chartContainer1" style="height: 370px; max-width: 920px; margin: 0px auto;"></div>

<script type="text/javascript">
$(document).ready(function(){
	var dataPoints = [];

	var chart = new CanvasJS.Chart("chartContainer1", {animationEnabled: true,title:{text: "Grade A Milk Collection - Mutaba"},
	    axisX:{valueFormatString: "DD MMM",crosshair: {enabled: true,snapToDataPoint: true}},
	    axisY: {title: "Milk Volumes in Litres",includeZero: false,valueFormatString: "##0.00 Litres",crosshair: {enabled: true,snapToDataPoint: true,labelFormatter: function(e) {return "Litres" + CanvasJS.formatNumber(e.value, "##0.00");}}
	    },
	    data: [{type: "area",xValueFormatString: "DD MMM",yValueFormatString: "##0.00 Litres",dataPoints: dataPoints}]
	});
	chart.render();


	function addData(data){
        for (var i=0;i<data.length;i++){

            dataPoints.push({
                x: new Date(data[i].month),
                y: data[i].ltrCol
            });
        }

        chart.render();
    }

	$.getJSON("http://localhost:8080/api/mccCountry/all",addData);

});
</script>