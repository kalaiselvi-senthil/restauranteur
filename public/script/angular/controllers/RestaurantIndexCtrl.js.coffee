@restauranteur.controller 'RestaurantIndexCtrl', ['$scope', '$location', '$http', ($scope, $location, $http) ->
  $scope.restaurants = []
  $http.get('./restaurants.json').success((data) ->
    $scope.restaurants = data
  )
]

# app/assets/javascripts/angular/controllers/RestaurantShowCtrl.js.coffee

@restauranteur.controller 'RestaurantShowCtrl', ['$scope', '$http', '$routeParams', ($scope, $http, $routeParams) ->
  $http.get("./restaurants/#{$routeParams.id}.json").success((data) ->
    $scope.restaurant = data
  )
]