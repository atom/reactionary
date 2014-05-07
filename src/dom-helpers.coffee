{DOM} = require 'react'

tag = (name, args...) ->
  if args[0]?.constructor is Object
    attributes = args.shift()
  else
    attributes = {}

  if attributes.hasOwnProperty('class')
    attributes.className = attributes.class
    delete attributes.class

  DOM[name](attributes, args...)

for tagName of DOM
  do (tagName) -> exports[tagName] = tag.bind(@, tagName)
