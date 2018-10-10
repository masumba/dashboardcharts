<script src="assets/js/canvasjs.min.js"></script>
<script src="assets/js/jquery.min.js"></script>
<div id="chartContainerfinances" style="height: 370px; max-width: 920px; margin: 0px auto;"></div>

<script type="text/javascript">
$(document).ready(function(){

		$('.finance_text_holder').text('By Country');

		var registered_dataPoints = [];

		var chart = new CanvasJS.Chart("chartContainerfinances", {exportEnabled: true,animationEnabled: true,title: {text: "Financial Stats"},
			data: [{type: "pie",startAngle: 240,yValueFormatString: "ZMW #,##0.##",indexLabel: "{label} {y}",click: onClickFinanceRegion,dataPoints: registered_dataPoints}]});
		chart.render();

		function onClickFinanceRegion(e) {
			financeRegionCharts();

		}

		function addData(data){
            for (var i=0;i<data.length;i++){

                registered_dataPoints.push({
                    label: "Amount Used",
                    y: data[i].used
                });
                registered_dataPoints.push({
                    label: "Amount Not Used",
                    y: data[i].given-data[i].used
                });
            }
            chart.render();
        }

        $.getJSON("http://localhost:8080/finances_api/all",addData);

});
</script>