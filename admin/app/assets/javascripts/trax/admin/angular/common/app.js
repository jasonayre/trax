//= require_self

var common = {};

angular.module("common", []);
angular.module("common", ["common.controllers",
                          "common.filters",
                          "common.directives",
                          "common.services",
                          "ui.bootstrap"]);