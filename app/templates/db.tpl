{% extends "base.tpl" %}

{% block title %}Page Not Found{% endblock %}


{% block body %}
  <blockquote>
  <h1 class="text-warning">Create db and tables</h1>

        {% if user == 'adminb'%}
        <p class='citat'>Vytvářím db linka a tabulky...</p>
        {% else %}
        <p class='citat'>Access denide</p>
        {% endif %}
        <footer class='citat'>DB Link</footer>
  </blockquote>
{% endblock %}