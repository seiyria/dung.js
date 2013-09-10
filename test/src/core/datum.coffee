chai = require 'chai' 
expect = chai.expect 
chai.should()

Datum = require('../../../dist/bin/dung').Datum

describe 'Datum', ->
	it 'should exist', ->
		datum = new Datum
		datum.should.be.instanceOf Datum

	it 'should have no tag by default', ->
		datum = new Datum
		datum.tag.should.equal ''

	it 'should be able to set a tag', ->
		datum = new Datum
		datum.tag.should.equal ''
		datum.tag = "AnotherCustomTag"
		datum.tag.should.equal "AnotherCustomTag"

	it 'should only have one property (tag)', ->
		datum = new Datum

		count = 0
		for own attr, value of datum
			count++

		count.should.equal 1