'use strict'

class Character {
  constructor(player, name, faction) {
    this.player = player
    this.name = name
    this.faction = faction
    player.characters.push(this)
  }

  characterEl() {
    return (
      `<li><b>Character:</b> ${this.name} / <b>Faction:</b> ${this.faction}</li>`
    )
  }
}
