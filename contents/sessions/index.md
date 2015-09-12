---
title: Sessions
template: simple.jade
changefreq: weekly
priority: 0.7
category: sessions
---

<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.2/handlebars.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>

<script id="session-template" type="text/x-handlebars-template">
  <div class="entry">
  {{#.}}
    {{zeit}}
    {{name}}
    {{titel}}
    {{session}}
    <br />
  {{/.}}
  </div>
</script>

<script>
function loadJSON(callback) {

  var xobj = new XMLHttpRequest();
  xobj.overrideMimeType("application/json");
  xobj.open('GET', 'http://sessionproxy.barcamp-erfurt.de/sessions.json', true); // Replace 'my_data' with the path to your file
  xobj.onreadystatechange = function () {
    if (xobj.readyState == 4 && xobj.status == "200") {
      // Required use of an anonymous callback as .open will NOT return a value but simply returns undefined in asynchronous mode
      callback(xobj.responseText);
    }
  };
  xobj.send(null);
 }

function init() {
 loadJSON(function(response) {
  // Parse JSON string into object
  var actual_JSON = JSON.parse(response);
  console.log(actual_JSON);
  $(document).ready(function(){
    // Extract the text from the template .html() is the jquery helper method for that
    var raw_template = $('#session-template').html();
    // Compile that into an handlebars template
    var template = Handlebars.compile(raw_template);
    // Retrieve the placeHolder where the Posts will be displayed
    var placeHolder = $("#sessions");
    // Generate the HTML for the template
    var html = template(actual_JSON);
    // Render the posts into the page
    placeHolder.append(html);

  });
 });
}

init();


 </script>

 <div id="sessions"></div>