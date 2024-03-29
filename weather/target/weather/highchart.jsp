<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>Highcharts Example</title>

		<style type="text/css">
#container {
	min-width: 310px;
	max-width: 800px;
	height: 400px;
	margin: 0 auto
}
		</style>
	</head>
	<body>
<script src="code/highcharts.js"></script>
<script src="code/modules/series-label.js"></script>
<script src="code/modules/exporting.js"></script>
<script type="text/javascript">
var a=[];
a[0]=43934;
a[1]=52503;
var w=[{
    name: 'Installation',
    data: [a[0], a[1], 57177, 69658, 97031, 119931, 137133, 154175,11111]
}, {
    name: 'Manufacturing',
    data: [24916, 24064, 29742, 29851, 32490, 30282, 38121, 40434]
}, {
    name: 'Sales & Distribution',
    data: [11744, 17722, 16005, 19771, 20185, 24377, 32147, 39387]
}, {
    name: 'Project Development',
    data: [null, null, 7988, 12169, 15112, 22452, 34400, 34227]
}, {
    name: 'Other',
    data: [12908, 5948, 8105, 11248, 8989, 11816, 18274, 18111]
},
	{name: '哈哈哈',
	data: [100000, 100000, 100000, 100000, 100000, 100000, 100000, 100000]
},
	{name: '哈哈哈',
	data: [100000, 100000, 100000, 100000, 100000, 100000, 100000, 100000]
},
	{name: '哈哈哈',
	data: [100000, 100000, 100000, 100000, 100000, 100000, 100000, 100000]
},
	{name: '哈哈哈',
	data: [100000, 100000, 100000, 100000, 100000, 100000, 100000, 100000]
}]
worker=new Array();
for(var i=0;i<3;i++){
	worker[i]=new Object();
	worker[i].name="Istall";
	worker[i].data=new Array();
	for(var j=0;j<10;j++){
		worker[i].data[j]=i*j;
	}
}

</script>

<div id="container"></div>



		<script type="text/javascript">

Highcharts.chart('container', {

    title: {
        text: 'Solar Employment Growth by Sector, 2010-2016'
    },

    subtitle: {
        text: 'Source: thesolarfoundation.com'
    },

    yAxis: {
        title: {
            text: 'Number of Employees'
        }
    },
    legend: {
        layout: 'vertical',
        align: 'right',
        verticalAlign: 'middle'
    },

    plotOptions: {
        series: {
            label: {
                connectorAllowed: false
            },
            pointStart: 2010
        }
    },

    series:w,

    responsive: {
        rules: [{
            condition: {
                maxWidth: 500
            },
            chartOptions: {
                legend: {
                    layout: 'horizontal',
                    align: 'center',
                    verticalAlign: 'bottom'
                }
            }
        }]
    }

});
		</script>
	</body>
</html>
