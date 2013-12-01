angular.module('common.services').factory('Protos', ['$http', function ($http) {
  var Protos = trax;
  
  Protos.fetch = function(key) {
    var proto = eval("self."+key);
  };

  // Protos.fetch = function(key) {
  //   var self = this;
  //   
  //   var current_proto = eval("self."+key);
  //   
  //   $http.get("/assets/" + current_proto.asset_path).then(function(result){
  //     var parser = new ProtoBuf.DotProto.Parser(result.data);
  //     parsed_proto = parser.parse();
  //     self.proto_cache[key] = parsed_proto;
  //     if(parsed_proto.imports.length > 0) {
  //       self.fetchProtoImports(parsed_proto.imports);
  //     };
  //     
  //   });
  //   return self;
  // };
  // 
  // Protos.fetchProtoImports = function(proto_imports) {
  //   var self = this;
  //   _.each(proto_imports, function(proto_import) {
  //     var key;
  //     console.log('calling each');
  //     console.log(proto_import);
  //     key = proto_import.split(".").shift();
  //     console.log(key);
  //     self.fetch(key);
  //   });
  //   
  // };
  
  return Protos;
}]);