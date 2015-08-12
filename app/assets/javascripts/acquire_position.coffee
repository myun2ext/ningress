window.acquire_current_position = () ->
  navigator.geolocation.getCurrentPosition (position) ->
    # Successfly acquire position
    lat = position.coords.latitude
    lng = position.coords.longitude
    $.post '/position', {
      _method: "put"
      latitude:  position.coords.latitude
      longitude: position.coords.longitude
    }
  , ->
    # failed acquire position
    console.log "failed"
  , {
    # options
    enableHightAccuracy: true
    maximumAge: 0
    timeout: 5000
  }
