{div, h1, p} = require '../src/dom-helpers'

describe "DOM helpers", ->
  it "allows for convenient creation of DOM nodes", ->
    element =
      div class: "greeting",
        div class: "header",
          h1 "Hello World"
        div class: "body",
          p "Each and every one of you"

    console.log JSON.stringify(element, null, 2)
