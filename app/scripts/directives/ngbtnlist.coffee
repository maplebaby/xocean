'use strict'

angular.module('xoceanApp')
  .directive('ngBtnList', () ->
    scope:{
        status:"=ngItemStatus"
        index :"@ngItemIndex"
        data:"=ngItemData"
    }
    templateUrl: 'partials/btnlist.html'
    restrict: 'A'
    link: (scope, element, attrs) ->
         # 改变工作记录的状态
        scope.curShow = scope.status
        scope.cwToggleDone = (status,index) ->
          scope.status = status
          scope.showlist = false
          scope.curShow = scope.status
          return

    controller: ($scope) ->

        $scope.showlist=false
  )
