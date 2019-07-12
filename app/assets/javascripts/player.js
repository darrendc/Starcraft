'use strict'

class Player {
  constructor(name, characters) {
    this.name = name
    this.characters = []
    this.createCharacters(characters)
  }

  createCharacters(characters) {
    characters.forEach(character => {
      new Character(this, character.name, character.faction.name)
    })
  }

  playerEl() {
    let template = `<h2>${this.name}</h2>`
    this.characters.forEach(character => {
      template += character.characterEl()
    })
    return template
  }
}
