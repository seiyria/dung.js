class Datum
	@tag

	constructor: ({tag}) ->
		@tag ?= tag

root = exports ? window  
root.Datum = Datum  