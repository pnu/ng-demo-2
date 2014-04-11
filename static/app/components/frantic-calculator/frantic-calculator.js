(function() {
'use strict';

var module = angular.module('frantic-calculator', [
    'ngResource',
]);

module.directive('franticCalculator', [ '$resource', function($resource) { return {
    restrict: 'E',
    templateUrl: 'components/frantic-calculator/frantic-calculator.html',
    controller: function($scope) {
        var Calculator = $resource('/:op/:a/:b');
        $scope.$watchCollection('params',function(params) {
            $scope.result = Calculator.get(params);
            console.log(params);
        });
    }
}}]);

}());
