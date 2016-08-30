<!DOCTYPE html>
<html>
<head>
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <link rel="stylesheet" href="{{url_for('static', filename='css/bootstrap.min.css')}}" />
 <link rel="stylesheet" href="{{url_for('static', filename='css/main.css')}}" />
 <link rel="shortcut icon" href="{{ url_for('static', filename='images/favicon.ico') }}">
 <script src="{{url_for('static', filename='js/bootstrap.js')}}"></script>
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
  <h3 class="text-center text-primary">{{month}}</h3>
  
   {% raw %}
    

<div ng-controller="AppCtrl" class="sample" layout="column" ng-cloak>
  <md-content class="md-padding">
    <md-tabs md-selected="selectedIndex" md-border-bottom md-autoselect>
      <md-tab ng-repeat="tab in tabs"
              ng-disabled="tab.disabled"
              label="{{tab.title}}">
        <div class="demo-tab tab{{$index%4}}" style="padding: 25px; text-align: center;">
          <div ng-bind="tab.content"></div>
          <br/>
          <md-button class="md-primary md-raised" ng-click="removeTab( tab )" ng-disabled="tabs.length <= 1">Remove Tab</md-button>
        </div>
      </md-tab>
    </md-tabs>
  </md-content>
  <form ng-submit="addTab(tTitle,tContent)" layout="column" class="md-padding" style="padding-top: 0;">
    <div layout="row" layout-sm="column">
      <div flex style="position: relative;">
        <h2 class="md-subhead" style="position: absolute; bottom: 0; left: 0; margin: 0; font-weight: 500; text-transform: uppercase; line-height: 35px; white-space: nowrap;">Add a new Tab:</h2>
      </div>
      <md-input-container>
        <label for="label">Label</label>
        <input type="text" id="label" ng-model="tTitle">
      </md-input-container>
      <md-input-container>
        <label for="content">Content</label>
        <input type="text" id="content" ng-model="tContent">
      </md-input-container>
      <md-button class="add-tab md-primary md-raised" ng-disabled="!tTitle || !tContent" type="submit" style="margin-right: 0;">Add Tab</md-button>
    </div>
  </form>
</div>


    {% endraw %}
     <!-- datepicker -->
     




  
  {% endblock %}

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="static/js/bootstrap.js"></script>

</body>

</html>


