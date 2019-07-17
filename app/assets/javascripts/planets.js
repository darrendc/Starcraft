'use strict'

$(document).on('turbolinks:load', function() {
  const id = $('#faction_id').val()
  let showPlanets = false
  $('.edit_faction').click(function(event) {
    event.preventDefault()
    showPlanets = !showPlanets
    if (showPlanets) {
      $.get( `/factions/${id}/planets`, function(data) {
      let names = data.map(({name}) => (`<li>${name}</li>`))
      $(".result").append(names)
    })
    } else {
      $(".result").html("")
    }
  })
})
