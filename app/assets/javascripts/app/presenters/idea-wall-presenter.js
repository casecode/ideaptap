(function () {

  window.IdeaWall = function (options) {

    var ideaTemplate = $('#templates .idea').html();
    var $root = options.root;
    var ideas = options.ideas;

    ideas.on('create', function (newIdea) {
      var newHtml = $.render(ideaTemplate, newIdea);
      $root.append(newHtml);
    });
  };

})();
