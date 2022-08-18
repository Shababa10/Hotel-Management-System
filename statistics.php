<?php
include_once "db.php";
include_once "header.php";
include_once "sidebar.php";
?>

<html>
  <head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">

      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Employee', 'Count'],
          ['Manager',     2],
          ['Cleaning',      8],
          ['Reception',  4],
          ['Cook', 5],
        
        ]);

        var options = {
          title: 'Employees According To Positions',
          is3D: true,
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
        chart.draw(data, options);
      }
    </script>
<style>
#piechart_3d{
		width: 400px; 
		height: 400px;
	        margin-left : 300px;
            }
#barchart_values{
		width: 400px; 
		height: 400px;
	        margin-left : 800px;
		margin-top :-400px;
            }
#calendar_basic{
		width: 1000px; 
		height: 250px;
	        margin-left : 300px;
            }


</style>
 <script type="text/javascript">
    google.charts.load("current", {packages:["corechart"]});
    google.charts.setOnLoadCallback(drawChart);
    function drawChart() {
      var data = google.visualization.arrayToDataTable([
        ["Type", "Expense", { role: "style" } ],
        ["Maintanence", 12.94, "#b87303"],
        ["Salary", 15.49, "red"],
        ["Electric Bills", 9.30, "blue"],
        ["External Services", 9.45, "color: #e5e6e2"]
      ]);

      var view = new google.visualization.DataView(data);
      view.setColumns([0, 1,
                       { calc: "stringify",
                         sourceColumn: 1,
                         type: "string",
                         role: "annotation" },
                       2]);

      var options = {
        title: "Hotel Expense",
        width: 410,
        height: 400,
        bar: {groupWidth: "95%"},
        legend: { position: "none" },
      };
      var chart = new google.visualization.BarChart(document.getElementById("barchart_values"));
      chart.draw(view, options);
  }
  </script>
  <script type="text/javascript">
      google.charts.load("current", {packages:["calendar"]});
      google.charts.setOnLoadCallback(drawChart);

   function drawChart() {
       var dataTable = new google.visualization.DataTable();
       dataTable.addColumn({ type: 'date', id: 'Date' });
       dataTable.addColumn({ type: 'number', id: 'Room Booked' });
       dataTable.addRows([
          [ new Date(2022, 6, 13), 6   ],
          [ new Date(2022, 6, 14), 7   ],
          [ new Date(2022, 6, 15), 2   ],
          [ new Date(2022, 6, 16), 3   ],
          [ new Date(2022, 6, 17), 3   ],
           //
          [ new Date(2022, 7, 13), 5   ],
          [ new Date(2022, 7, 14), 9 ],
          [ new Date(2022, 7, 15), 5 ],
          [ new Date(2022, 7, 16), 6 ],
          [ new Date(2022, 7, 17), 2 ],
          // Many rows omitted for brevity.
          [ new Date(2022, 8, 4), 3 ],
          [ new Date(2022, 8, 5), 5],
          [ new Date(2022, 8, 12), 6],
          [ new Date(2022, 8, 13), 7],
          [ new Date(2022, 8, 19), 1 ],
          [ new Date(2022, 8, 23), 3],
          [ new Date(2022, 8, 24), 5],
          [ new Date(2022, 8, 30), 2 ]
        ]);

       var chart = new google.visualization.Calendar(document.getElementById('calendar_basic'));

       var options = {
         title: "Reserved Room on Different Day",
         height: 350,
       };

       chart.draw(dataTable, options);
   }
</script>
  </head>
  <body>
    <div id="piechart_3d"></div>
    <div id="barchart_values"></div><br><br><br>
    <div id="calendar_basic"></div>
  </body>
</html>
<?php
include_once "footer.php";
?>
