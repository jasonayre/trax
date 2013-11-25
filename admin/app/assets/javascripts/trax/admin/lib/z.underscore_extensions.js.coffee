_.mixin
  capitalize: (string) ->
    return string.charAt(0).toUpperCase() + string.substring(1).toLowerCase()

  coerceObjectValuesAsIntegers: (object) ->
    for own key, val of object
      object[key] = +val
    object
    
  coerceObjectValuesAsBooleans: (object) ->
    for own key, val of object
      object[key] = !!val
    object
    
  coerceObjectKeysAsIntegers: (object, keys...) ->
    for key in keys
      if object[key]?
        if _.isObject(object[key])
          object[key] = _.coerceObjectValuesAsIntegers(object[key])
        else if _.isString(object[key])
          object[key] = +object[key]
        else
    object
    
  coerceObjectKeysAsBooleans: (object, keys...) ->
    for key in keys
      if object[key]?
        if _.isObject(object[key])
          object[key] = _.coerceObjectValuesAsBooleans(object[key])
        else if _.isString(object[key])
          object[key] = !!object[key]
        else
    object
    
  coerceObjectKeysAsArrays: (object, keys...) ->
    for key in keys
      if object[key]?
        if _.isObject(object[key])
          object[key] = _.coerceObjectValuesAsArrays(object[key])
        else if _.isString(object[key])
          object[key] = object[key].split(",")
        else
    object
    
  coerceObjectValuesAsArrays: (object) ->
    for own key, val of object
      object[key] = val.split(",")
    object
    
  coerceObjectKeysAsObjects: (object, keys...) ->
    for object_key in keys
      object[object_key] = _.toOptionsObject(object[object_key]) if object[object_key]?
    object
    
  flattenObjectExtractValues: (object) ->
    values = _(object).values().value().map (val) ->
      if _.isObject(val)
        _.flattenObjectExtractValues(val)
      else
        val
    _.flatten(values)
        
  trim: (string) ->
    string.replace(/^\s+|\s+$/g, '')
        
  toOptionsObject: (string) ->
    options = _.map string.split(','), (val) -> _.trim(val)
    keys = _.map options, (option) -> option.split(':').shift()
    values = _.map options, (option) -> _.trim(option.split(':').pop())
    _.object(keys, values)