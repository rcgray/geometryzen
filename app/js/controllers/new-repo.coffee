angular.module("app").controller 'NewRepoCtrl', ['$scope', 'GitHub', 'cookie', '$', '_', '$async', ($scope, github, cookie, $, _, $async) ->

  EVENT_CATEGORY = "new-repo"
  ga('create', 'UA-41504069-1', 'geometryzen.org');
  ga('set', 'page', '/new-repo')
  ga('send', 'pageview')

  # We'll do this here for now, but it may make sense to do this by resolve(ing) in the routeProvider.
  GITHUB_TOKEN_COOKIE_NAME = 'github-token'
  token = cookie.getItem(GITHUB_TOKEN_COOKIE_NAME)

  $('#myModal').on 'show', ->
    # Notice that the privacy value has to be set using a string for radio input types.
    $scope.repo = name: "", description: "", "private": "false", auto_init: true

  $('#myModal').on 'shown', ->

  $('#myModal').on 'hide', ->

  $('#myModal').on 'hidden', ->

  $scope.createRepo = () ->
    ga('send', 'event', EVENT_CATEGORY, 'createRepo')
    github.postRepo token, $scope.repo.name, $scope.repo.description, false, $scope.repo.auto_init, (err, response) ->
      if not err
        $('#myModal').modal('hide')
      else
        messages = _.map(response.errors, (error) -> error.message).join()
        alert(messages)
]