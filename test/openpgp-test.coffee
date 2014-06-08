assert    = require("assert")
requirejs = require("requirejs")

requirejs.config
  #Pass the top-level main.js/index.js require
  #function to requirejs so that node modules
  #are loaded relative to the top-level JS file.
  nodeRequire: require

describe "require.js", ->
  it "should exists", ->
    assert.ok requirejs?

  it "should load OpenPGP from lib/ folder", (done) ->
    requirejs ["../public/js/lib/openpgp/index"], (openpgp) ->
      done() if openpgp?