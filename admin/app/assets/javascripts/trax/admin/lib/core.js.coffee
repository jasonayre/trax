class @Collection extends Array
  constructor: ->
    __name__: 'Collection'
    args = (Array::slice.call(arguments, 0)).flatten()
    @push args...

  currentRecordIndex: ->
    @findIndexById @current_record.id

  fetch: (opts) ->
    @resource_klass().query()

  findIndexById: (id) ->
    _.findIndex @, id: id

  hasNextRecord: ->
    @[@currentRecordIndex() + 1]?

  hasPreviousRecord: ->
    @[@currentRecordIndex() - 1]?

  nextRecord: (index) ->
    resource = @[index + 1]

  nextRecordById: (id) ->
    index = @findIndexById(id)
    @[index + 1]

  previousRecord: (index) ->
    index = @findIndexById(id)
    @[index - 1]

  previousRecordById: (id) ->
    index = @findIndexById(id)
    @[index - 1]

  removeByIndex: (index) ->
    resource = @[index]
    @.splice(index, 1)
    resource.remove()

  resource_klass: ->
    @first().__proto__['constructor']

  selectRecordById: (id) ->
    index = @findIndexById(id)
    @current_record = @[index]

class @PaginatedCollection extends @Collection
  constructor: ->
    __name__: 'PaginatedCollection'
    super

  fetch: (params) ->
    @resource_klass().query(params).then (result) ->
      console.log 'result was'
      result

  nextPage: ->
    console.log 'hi next page'
    console.log @.pagination