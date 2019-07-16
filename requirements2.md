# Specifications for the Rails with jQuery Assessment

Specs:
- [x] Uses jQuery for implementing new requirements

- [x] Includes a index/list resource rendered using jQuery and JSON backend.
    * from factions show page, render all its planets (for that faction)

- [x] Includes an show/item resource rendered using jQuery and JSON backend.
    * from players search page, use AJAX to render the searched player (with their characters and corresponding faction)

- [x] Includes at least one has_many relationship in information rendered via JSON and appended to the DOM.
    * from factions show page, render all planets (Faction has_many planets)

- [x] Uses your Rails API and a form to create a resource and render the response without a page refresh.
   * from players show page, appends a new character (with name and faction) to a players character collection

- [x] Translates JSON responses into js model objects.

- [x] A js model object has at least one function added to the prototype.

- [ ] xContains at least 4 model specs, 2 request specs and one system test that reasonably tests your public api.

Confirm
- [ ] You have a large number of small Git commits
- [ ] Your commit messages are meaningful
- [ ] You made the changes in a commit that relate to the commit message
- [ ] You don't include changes in a commit that aren't related to the commit message
- [ ] Makes use of ES6 features as much as possible (e.g Arrow functions, Let & Const, Class, constructor functions)
- [ ] Application is pretty DRY.
