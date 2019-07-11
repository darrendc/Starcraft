'use strict'

// This file is responsible for manipulating the DOM, setting the listener, and making player AJAX requests. This file uses jQuery.

$(function() {
  const $planets = $("#all-planets")
  const factionId =
  $planets.on("click", function(event) {
    console.log(this)
    $.get(`${window.location.href}/planets`).done(function(json) {
    // console.log(json)
    })
  })
})

    // Make sure it is a json request (RUBY: request.format )
    // Make sure we are "render_to" a json format
    // Console.log your response in the frontend promise
    // Finally start using the assessment as an example (Display by creating a new Planet(attributes from response), )
