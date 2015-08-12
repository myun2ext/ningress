window.acquire_current_position = () ->
  navigator.geolocation.getCurrentPosition (position) ->
    # Successfly acquire position
    lat = position.coords.latitude
    lng = position.coords.longitude
    $("#positionLatitude").val(lat)
    $("#positionLongitude").val(lat)
    $("#positionUpdateForm").submit()
  , ->
    # failed acquire position
    console.log "failed"
  , {
    # options
    enableHightAccuracy: true
    maximumAge: 0
    timeout: 5000
  }
