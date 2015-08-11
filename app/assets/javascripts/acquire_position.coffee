window.acquire_current_position = () ->
  navigator.geolocation.getCurrentPosition (position) ->
    # Successfly acquire position
    lat = position.coords.latitude
    lng = position.coords.longitude
    console.log(lat)
    console.log(lng)
  , ->
    # failed acquire position
    console.log "failed"
  , {
    # options
    enableHightAccuracy: true
    maximumAge: 0
    timeout: 5000
  }
