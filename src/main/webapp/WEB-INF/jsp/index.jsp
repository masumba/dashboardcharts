<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MPS-Demo</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">

    <!--  -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/canvasjs.min.js"></script>

    <!--  -->
</head>

<body>
    <nav class="navbar navbar-default">
        <div class="container">
            <div class="navbar-header"><a class="navbar-brand logo-image" href="#"></a><button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button></div>
            <div
                class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav">
                    <li role="presentation"><a href="DAZ.html">DAZ</a></li>
                    <li role="presentation"><a href="CFU.html">CFU</a></li>
                </ul>
        </div>
        </div>
    </nav>


    <div class="container-fluid row">
    <!-- <div class="row row-eq-height"> -->
        <div class="col-md-6" id="farmer_size">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">Farmer Information <span class="farmer_text_holder">By Country</span> <span class="farmer_bread"></span></h3>
                </div>
                <div class="panel-body">
                    <div id="farmer_charts"></div>
                </div>
            </div>
        </div>
        <div class="col-md-6" id="agrodealer_size">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">Agro Dealer Information <span class="agrodealer_text_holder">By Country</span>  <span class="agrodealer_bread"></span></h3>
                </div>
                <div class="panel-body">
                    <div id="agro_dealer_charts"></div>
                </div>
            </div>
        </div>
        <div class="col-md-6" id="finance_size">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">Finance Information <span class="finance_text_holder">By Country</span>  <span class="finance_bread"></span></h3>
                </div>
                <div class="panel-body">
                    <div id="finance_charts"></div>
                </div>
            </div>
        </div>
        <div class="col-md-6" id="transaction_size">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">Transaction Information <span class="transaction_text_holder">By Country</span>  <span class="transaction_bread"></span></h3>
                </div>
                <div class="panel-body">
                    <div id="transaction_charts"></div>
                </div>
            </div>
        </div>
    </div>
    <!-- * -->
    <script type="text/javascript">
        function load_farmer_charts(farmerchart = ''){
            document.getElementById("farmer_size").className = "col-md-6";
            $.ajax({
                url:"http://localhost:8080/farmer",
                method:"POST",
                data:{farmerchart:farmerchart},
                success:function(data){$('#farmer_charts').html(data);}
            })
        }

        function load_agrodealer_charts(agrodealerchart = ''){
            $.ajax({
                url:"http://localhost:8080/agrodealer",
                method:"POST",
                data:{agrodealerchart:agrodealerchart},
                success:function(data){$('#agro_dealer_charts').html(data);}
            })
        }

        function load_finance_charts(financechart = ''){
            $.ajax({
                url:"http://localhost:8080/finance",
                method:"POST",
                data:{financechart:financechart},
                success:function(data){$('#finance_charts').html(data);}
            })
        }

        function load_transaction_charts(transactionchart = ''){
            $.ajax({
                url:"http://localhost:8080/transaction",
                method:"POST",
                data:{transactionchart:transactionchart},
                success:function(data){$('#transaction_charts').html(data);}
            })
        }

        load_transaction_charts();
        load_finance_charts();
        load_agrodealer_charts();
        load_farmer_charts();

        setInterval(function(){
            load_transaction_charts();
            load_finance_charts();
            /*load_agrodealer_charts();*/
            load_farmer_charts();
        }, 300000);
    </script>
    <!-- * -->

</body>

</html>