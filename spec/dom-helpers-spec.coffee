React        = require 'react/addons'
{div, h1, p} = require '../src/dom-helpers'

element = null

describe "DOM helpers", ->
  beforeEach ->
    # Create React Component with Reactionary
    element =
      div className: "greeting", key: "fancy-key",
        div className: "header",
          h1 "Hello World"
        div className: "body",
          p "Each and every one of you"


  it "allows for convenient creation of DOM nodes", ->
    (expect React.addons.TestUtils.isDOMComponent element).toBe true

  it "creates DOM nodes with children", ->
    (expect element.props.children).toBeDefined()
    (expect element.props.children.length).toEqual 2

  it "creates DOM nodes with correct props", ->
    (expect element.props.key).toEqual 'fancy-key'
    (expect element.props.className).toEqual 'greeting'
    (expect element.props.children[0].props.className).toEqual 'header'

  it "creates DOM nodes with plain text child", ->
    expect(
      element.props.children[0].props.children.props.children
    ).toEqual 'Hello World'
