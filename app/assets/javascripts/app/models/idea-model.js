(function () {

  window.Idea = function () {
    var ideas = [];

    $.observable(this);

    this.create = function (newIdea) {
      var self = this;

      $.post(g.userIdeasUrl, newIdea, function () {
        ideas.push(newIdea);
        self.trigger('create', newIdea);
      });
    };

    this.initializeIdeas = function (initialIdeas) {
      for (var i = 0; i < initialIdeas.length; i += 1) {
        var idea = initialIdeas[i];
        ideas.push(idea);
        this.trigger('create', idea);
      }
    };

  };

  

})();
