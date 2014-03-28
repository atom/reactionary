{DOM} = require 'react'

for tagName of DOM
  do (tagName) => exports[tagName] = (args...) -> tag(tagName, args...)

tag = (name, args...) ->
  if args[0]?.constructor is Object
    attributes = args.shift()
  else
    attributes = {}

  if attributes.hasOwnProperty('class')
    attributes.className = attributes.class
    delete attributes.class

  DOM[name](attributes, args...)
