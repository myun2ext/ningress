window.acquire_current_position = () ->
  $("#footprint").hide()
  $("#acquireButton").hide()
  $("#acquiringMessage").text("acquiring... please wait.")

  navigator.geolocation.getCurrentPosition (position) ->
    $("#acquiringMessage").text("submitting!")
    # Successfly acquire position
    lat = position.coords.latitude
    lng = position.coords.longitude
    $("#positionLatitude").val(lat)
    $("#positionLongitude").val(lng)
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
