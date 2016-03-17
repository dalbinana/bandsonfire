(function () {
    

      // Load the Visualization API and the corechart package.
      google.charts.load('current', {'packages':['corechart']});

      // Set a callback to run when the Google Visualization API is loaded.
      google.charts.setOnLoadCallback(drawChart);

      // Callback that creates and populates a data table,
      // instantiates the pie chart, passes in the data and
      // draws it.
      function drawChart() {
        var data=$('.data_to_graph').data('graph');
        

        
        
        

        // Create the data table.
        var data = google.visualization.arrayToDataTable(data);

        // Set chart options
         var options = {
          title: 'Company Performance',
          curveType: 'function',
          legend: { position: 'bottom' }

        };


        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));
        chart.draw(data, options);
      }
})();      
    