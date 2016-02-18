(function() {
  define(["angular-mocks", "home/home"], function() {
    describe("controller title", function() {
      var $location, $scope, homeController;
      $scope = void 0;
      $location = void 0;
      homeController = void 0;
      beforeEach(function() {
        module("homeModule");
        inject(function(_$injector_, _$rootScope_) {
          $scope = _$rootScope_.$new();
          $location = _$injector_.get("$location");
          homeController = _$injector_.get("$controller")("HomeController", {
            '$scope': $scope,
            '$location': $location
          });
        });
      });
      it("should be equal dummy", function() {
        expect($scope.pageTitle).toEqual("dummy");
      });
    });
  });

}).call(this);

