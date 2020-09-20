## Welcome to README.md 🙃
<br>

**这里只有些垃圾话, 屎味的鸡汤, 我给它们取了个略显俗套的名字: 程序人生**
<br>
<br>

{% assign tags =  site.readme | map: 'tag' | uniq | sort | reverse %}
{% assign articles = site.readme | sort | reverse %}
{% for tag in tags %}
  <h3>{{ tag }}</h3>
  <ul>
  {% for self in articles %}
    {% if self.tags contains tag %}

      {% if self.title contains "时间轴" %}
        <a href="{{ self.url }}"> {{ self.date | date: "%m-%d-%Y" }} - {{ self.title }}</a>
        <br>
        <br>
      {% else %}
        <li>
          <a href="{{ self.url }}"> {{ self.date | date: "%Y-%m-%d" }} - {{ self.title }}</a>
        </li>
      {% endif %}

    {% endif %}
  {% endfor %}
  </ul>
{% endfor %}
