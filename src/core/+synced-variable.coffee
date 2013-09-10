class SyncedVariable

	constructor: (@data) ->
		@synced = true

	toString: ->
		@data

root = exports ? window  
root.$ = (data) -> new SyncedVariable(data)  