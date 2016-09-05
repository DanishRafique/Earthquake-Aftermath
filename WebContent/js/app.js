'use strict';  
            
angular.module('earthquakeApp',[])
            
        .controller('MenuController',['$scope',function($scope){
                
            $scope.tab=1;
            $scope.filtText ='';
            $scope.showDetails =false;
            $scope.informations=[{
            name:"Ramesh Yadav",
            image:"img/passport.png", 
            city:"Kolkata",
            country:"India",
            conname:"Suresh Raina",
            connumber:"+91-033-2284-8747",
            status:"Untraced",
            comment:''
        },
        {
            image:"img/passport.png",
            name:"Ramesh Yadav",
            city:"Kolkata",
            country:"India",
            conname:"Suresh Raina",
            connumber:"+91-033-2284-8747",
            status:"Found",
            comment:''
        },
        {
            image:"img/passport.png",
            name:"Ramesh Yadav",
            city:"Kolkata",
            country:"India",
            conname:"Suresh Raina",
            connumber:"+91-033-2284-8747",
            status:"Found",
            comment:''
        },
        {
            image:"img/passport.png",
            name:"Ramesh Yadav",
            city:"Kolkata",
            country:"India",
            conname:"Suresh Raina",
            connumber:"+91-033-2284-8747",
            status:"Untraced",
            comment:''
        }];

        $scope.select = function(setTab){
            $scope.tab = setTab;
            if (setTab === 2){
                $scope.filtText ="Found";
            }
            else if(setTab === 3){
                $scope.filtText ="Untraced";
            }
            else{
                $scope.filtText ="";
            }

        };

    $scope.isSelected = function(checkTab){
            return ($scope.tab === checkTab);
    };

    $scope.toggleDetails = function(){
        $scope.showDetails = !$scope.showDetails;
    }

}]);
