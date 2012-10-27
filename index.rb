#!/usr/bin/env ruby
require './ipsum.rb'
puts "Content-Type: text/html"
puts ""
puts '<!DOCTYPE html>
<html>
  <head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link href="css/bootstrap-responsive.css" rel="stylesheet">
   <title>Nikky Ipsum</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
  </head>
  <body>
  <div class="container">
  <h1>Nikky Ipsum</h1>
  '
5.times do
  puts "<p>"
  puts Nikky.generate_paragraph
  puts "</p>"
end
puts '
    <hr>
    <footer>Text generation from <a href="http://www.ticalc.org/archives/files/fileinfo/450/45051.html">The Nikky Simulator</a> by the amazing <a href="http://www.ticalc.org/about/staff/travise.html">Travis Evans</a></footer>
  '
  puts "<script type=\"text/javascript\">var analyticsFileTypes=[''];var analyticsEventTracking='enabled';</script>
<script type=\"text/javascript\">var _gaq=_gaq||[];_gaq.push(['_setAccount','UA-12818678-2']);_gaq.push(['_addDevId','i9k95']);_gaq.push(['_trackPageview']);_gaq.push(['_trackPageLoadTime']);(function(){var ga=document.createElement('script');ga.type='text/javascript';ga.async=true;ga.src=('https:'==document.location.protocol?'https://ssl':'http://www')+'.google-analytics.com/ga.js';var s=document.getElementsByTagName('script')[0];s.parentNode.insertBefore(ga,s);})();</script>
"
puts '
  </div>
  <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="js/bootstrap.min.js"></script>

  </body>
</html>'
