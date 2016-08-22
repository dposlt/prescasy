{% extends "base.tpl" %}

{% block title %}Page Not Found{% endblock %}


{% block body %}
  <blockquote>
  <h1 class="text-warning">Stránka nenalezena</h1>

        <p class='citat'>Dvě nejtěžší věci, které člověk v životě hledá, jsou prává láska a věrné přátelství...</p>
        <footer class='citat'>Ani jedno tu však nenajdeš</footer>
  <p class="back_url"><a href="{{ url_for('index') }}">Vrať se</a>
  </blockquote>
{% endblock %}