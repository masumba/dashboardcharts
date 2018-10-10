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
                    <li role="presentation"><a href="http://localhost:8080/">CFU</a></li>
                    <li role="presentation"><a href="http://localhost:8080/daz">DAZ</a></li>
                </ul>
        </div>
        </div>
    </nav>


    <div class="container-fluid row">
        <!-- <div class="row row-eq-height"> -->
            <div class="col-md-4" id="mp_size">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Milk Processor Information <span class="mp_text_holder">By Country</span> <span class="mp_bread"></span></h3>
                    </div>
                    <div class="panel-body">
                        <div id="mp_charts"></div>
                    </div>
                </div>
            </div>
            <div class="col-md-4" id="mcc_size">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Milk Collection Center Information <span class="mcc_text_holder">By Country</span>  <span class="mcc_bread"></span></h3>
                    </div>
                    <div class="panel-body">
                        <div id="mcc_charts"></div>
                    </div>
                </div>
            </div>
            <div class="col-md-4" id="finance_size">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Finance Information <span class="finance_text_holder">By Country</span>  <span class="finance_bread"></span></h3>
                    </div>
                    <div class="panel-body">
                        <div id="finance_charts"></div>
                    </div>
                </div>
            </div>
        </div>
        <!-- * -->
        <script type="text/javascript">
            function load_mp_charts(mpchart = ''){
                document.getElementById("mp_size").className = "col-md-4";
                $.ajax({
                    url:"http://localhost:8080/mp",
                    method:"POST",
                    data:{mpchart:mpchart},
                    success:function(data){$('#mp_charts').html(data);}
                })
            }

            function load_mcc_charts(mccchart = ''){
                $.ajax({
                    url:"http://localhost:8080/mcc",
                    method:"POST",
                    data:{mccchart:mccchart},
                    success:function(data){$('#mcc_charts').html(data);}
                })
            }

            function load_finance_charts(financechart = ''){
                $.ajax({
                    url:"http://localhost:8080/daz_finance",
                    method:"POST",
                    data:{financechart:financechart},
                    success:function(data){$('#finance_charts').html(data);}
                })
            }

            load_finance_charts();
            load_mcc_charts();
            load_mp_charts();

            setInterval(function(){
                load_finance_charts();
                load_mcc_charts();
                load_mp_charts();
            }, 300000);
        </script>
        <!-- * -->

</body>

</html>