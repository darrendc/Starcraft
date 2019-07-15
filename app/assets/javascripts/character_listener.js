function addCharacterFormListener() {
  const $form = $("#new_character.new_character")
  $form.on("submit", (event) => {
    event.preventDefault()
  })
}
