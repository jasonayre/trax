if (typeof String::startsWith != 'function') 
  String::startsWith = (str) ->
    return this.slice(0, str.length) == str
 
if (typeof String::endsWith != 'function')
  String::endsWith = (str) ->
    return this.slice(-str.length) == str