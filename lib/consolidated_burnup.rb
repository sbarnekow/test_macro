class ConsolidatedBurnup

  def initialize(parameters, project, current_user)
    @parameters = parameters
    @project = project
    @current_user = current_user
  end

  def execute
    %{
      <div id="chart_div" style="width: 900px; height: 500px;"></div>
      
      <script type="text/javascript" src="https://www.google.com/jsapi"></script>
      <script type="text/javascript">
        google.load("visualization", "1", {packages:["corechart"]});
        google.setOnLoadCallback(drawChart);
        function drawChart() {
          var data = google.visualization.arrayToDataTable([
            ['Day', 'Amount'],
            [new Date(2014, 1, 10),  1000],
            [new Date(2014, 1, 11),  1170],
            [new Date(2014, 1, 12),  1220],
            [new Date(2014, 1, 13),  1300]
          ]);

          var options = {
            title: 'Consolidated Burnup Chart',
            trendlines: { 0: {} }
          };

          var chart = new google.visualization.LineChart(document.getElementById('chart_div'));
          chart.draw(data, options);
          }
      </script>
    }
  end
  
  def can_be_cached?
    false  # if appropriate, switch to true once you move your macro to production
  end
    
end

