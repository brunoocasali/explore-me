## get JSON object
## on success, parse it and
## hand it over to MapBox for mapping
#$(document).ready ->
#  L.mapbox.accessToken = 'pk.eyJ1IjoiYnJ1bm9vY2FzYWxpIiwiYSI6ImNpZndnNG14YTJ0NmN2OGx5bm81ejYzcGgifQ.RKVUzMXgCIvJaqGfu9F41w';
#  map = L.mapbox.map('map', 'mapbox.streets').setView([39.952335, -75.163789], 9);
#
#  $.ajax
#    dataType: 'text'
#    url: 'places.json'
#    success: (data) ->
#      geojson = $.parseJSON(data)
#      map.featureLayer.setGeoJSON(geojson)
#
#      # add custom popups to each marker
#      map.featureLayer.on 'layeradd', (e) ->
#        marker = e.layer
#        properties = marker.feature.properties
#
#        # create custom popup
#        popupContent =  '<div class="popup">' +
#          '<h3>' + properties.rate + '</h3>' +
#      #    '<p>' + properties.address + '</p>' +
#          '</div>'
#
#        # http://leafletjs.com/reference.html#popup
#        marker.bindPopup popupContent,
#          closeButton: false
#          minWidth: 320
