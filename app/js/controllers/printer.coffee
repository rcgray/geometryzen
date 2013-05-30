angular.module("app").controller 'PrinterCtrl', ['$scope', 'GitHub', 'cookie', '$', '_', '$async', ($scope, github, cookie, $, _, $async) ->

  PRESERVE_ELEMENT_ID = "a5f435e0-c92e-11e2-8b8b-0800200c9a66"

  $scope.$on 'reset', (e) ->
    elem = document.getElementById(PRESERVE_ELEMENT_ID)
    if elem
      elem.innerHTML = ""
    else
      console.log "Unable to find element with Id #{PRESERVE_ELEMENT_ID}"

  $scope.$on 'print', (e, text) ->
    elem = document.getElementById(PRESERVE_ELEMENT_ID)
    if elem
      elem.innerHTML = elem.innerHTML + text
    else
      console.log text
]