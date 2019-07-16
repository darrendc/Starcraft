function addCharacterFormListener() {
  const $form = $("#new_character.new_character")
  $('form').on("submit", function(event) {
    event.preventDefault()
    let name = $('#character_name').val()
    let faction_id = $('#character_faction_id').val()

  let request = $.ajax({
      url: this.action,
      type: "POST",
      data: {character: { name: name, faction_id: faction_id}},
      success: function(data) {
        let faction_name = data.faction.name
        let $list = $('#character_list')
        let template =
          `<p>
          <b>Name</b>: ${name}
          </br>
          <b>Faction</b>: <a href='/factions/${faction_id}'>${faction_name}</a>`

      $list.append(template)
      }
    })
  })
}
