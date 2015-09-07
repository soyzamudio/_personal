(function() {
  var indexOf = [].indexOf || function(item) { for (var i = 0, l = this.length; i < l; i++) { if (i in this && this[i] === item) return i; } return -1; };

  angular.module('app').controller('ExperienceController', ['$scope', function($scope) {
    $scope.experience = [
      {
        company: 'ShopStyle / POPSUGAR, Inc.',
        title: 'JavaScript Engineer',
        description: 'Work on ShopStyle e-commerce site. Using Angular.js and CoffeeScript as my main framework and language. Fixing bugs and adding new features to the website.',
        src: 'http://josezamudio.me/img/popsugar.jpg',
        years: [2015]
      }, {
        company: 'Coding House Institute',
        title: 'Teacher Assistant',
        description: 'Help students of the web development bootcamp during all day lectures. Writing articles on related topics. Tutoring students who need help 24/7.',
        src: 'http://josezamudio.me/img/codinghouse.jpg',
        years: [2015, 2014]
      }, {
        company: 'AirTym',
        title: 'Co-Founder & Developer',
        description: 'Responsible for designing the website as well as the mockups for the mobile application. Helped with the development of the iOS prototype using Swift. Responsible for finding a partner for the CTO position.',
        src: 'http://josezamudio.me/img/airtym.png',
        years: [2013, 2014]
      }, {
        company: 'Freelance',
        title: 'Software Engineer & Designer',
        description: 'Web development using the latest technologies such as Node.js/Express.js and Ruby on Rails. Create iOS applications using the new Apple language: Swift.',
        src: 'assets/images/freelance.jpg',
        years: [2012, 2013, 2014]
      }, {
        company: 'ZV Services',
        title: 'IT Manager',
        description: 'Setup and maintain all systems and servers and website for three different locations. Train and support all IT employees within the company.',
        src: 'assets/images/zvservices.jpg',
        years: [2009, 2010, 2011]
      }
    ];
    $scope.years = [2009, 2010, 2011, 2012, 2013, 2014, 2015];
    $scope.activeYear = $scope.years[$scope.years.length - 1];
    $scope.showExperience = function(job) {
      var ref;
      if (ref = $scope.activeYear, indexOf.call(job.years, ref) >= 0) {
        return true;
      } else {
        return false;
      }
    };
    return $scope.showYear = function(year) {
      return $scope.activeYear = year;
    };
  }]);

}).call(this);

//# sourceMappingURL=../../../app/components/experience/experience.js.map