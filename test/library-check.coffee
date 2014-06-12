expect    = require("chai").expect
requirejs = require("requirejs")

requirejs.config
  # Pass the top-level main.js/index.js require
  # function to requirejs so that node modules
  # are loaded relative to the top-level JS file.
  nodeRequire: require

# Do some testing
describe "require.js", ->
  it "should exists", ->
    expect(requirejs).to.exist

  it "should load libraries from public/ folder", (done) ->
    requirejs [
      "../public/js/lib/openpgp/index"
      "../public/js/password"
    ], (openpgp, Password) ->
      done()

      # OpenPGP tests goes here
      describe "OpenPGP", ->
        it "should exists", ->
          expect(openpgp).to.exist

      # Password tests goes here
      describe "Password", ->
        it "should exists", ->
          expect(Password).to.exist

        it "should be a function", ->
          expect(Password).to.be.a "function"

      # Password object tests
      describe "Password object", ->
        passwd = new Password()

        it "should be an object", ->
          expect(passwd).to.be.a "object"

        it "should be instance of Password", ->
          expect(passwd).to.be.instanceof Password