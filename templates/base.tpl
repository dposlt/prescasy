<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="{{url_for('static', filename='css/bootstrap.min.css')}}" />
 <link rel="stylesheet" href="{{url_for('static', filename='css/main.css')}}" />
 <link rel="shortcut icon" href="{{ url_for('static', filename='images/favicon.ico') }}">
 <script src="{{url_for('static', filename='js/main.js')}}"></script>
</head>
<body>

<div class="container">
  <div class="jumbotron">
    
    <a href="{{ url_for('index') }}">   
     <img src="/static/images/company_logo.png" class="img-responsive" alt="Moneta Logo">
    </a> 
    <h3 class="navbar-text navbar-right text-primary" style="margin-top: -45px"><span class="name">ES</span><span class="svislitko">|</span>PŘESČASY</h3>    
  </div>
  
  {% block body %}
  <!-- actual month -->
  <div class="jumbotron">
  <h2 class="text-center text-primary">{{month}}</h2>
<!-- Slide THREE -->
    <div class="slideThree">	
	<input type="checkbox" value="None" id="slideThree" name="check" />
	<label for="slideThree"></label>   
    </div>
  </div>


  
  {% endblock %}
</body>

</html>


