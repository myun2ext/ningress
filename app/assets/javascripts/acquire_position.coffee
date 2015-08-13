window.acquire_current_position = () ->
  $("#footprint").hide()
  $("#acquireButton").hide()
  $("#acquiringMessage").text("acquiring... please wait.")

  navigator.geolocation.getCurrentPosition (position) ->
    # Successfly acquire position
    $("#acquiringMessage").text("acquire location address...")
    lat = position.coords.latitude
    lng = position.coords.longitude
    geocoder = new google.maps.Geocoder()
    latLng = new google.maps.LatLng(lat,lng)

    geocoder.geocode latLng: latLng, (results, status) ->
      if (status == google.maps.GeocoderStatus.OK)
        address = results[1].formatted_address
        $("#acquiringMessage").text("submitting!")
        $("#positionLatitude").val(lat)
        $("#positionLongitude").val(lng)
        $("#positionAddress").val(address)
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
