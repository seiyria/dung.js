chai = require 'chai'  
chai.should()

Datum = require '../src/core/datum'
Datum = Datum.Datum

describe 'Datum', ->
	it 'should exist', ->
		datum = new Datum
		datum.should.be.instanceOf Datum
	it 'should have no tag by default', ->
		datum = new Datum
		datum.tag.should.equal ""
	it 'should be able to be constructed with a tag', ->
		datum = new Datum tag: "CustomTag"
		datum.tag.should.equal "CustomTag"
	it 'should be able to set a tag', ->
		datum = new Datum
		datum.tag.should.equal ""
		datum.tag = "AnotherCustomTag"
		datum.tag.should.equal "AnotherCustomTag"