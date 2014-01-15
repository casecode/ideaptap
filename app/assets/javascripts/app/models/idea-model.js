(function () {

  window.Idea = function () {
    var ideas = [];

    $.observable(this);

    this.create = function (newIdea) {
      var self = this;
      comments.push(newComment);
      self.trigger('create', newComment);
    };

    this.initializeWith = function (initialIdeas) {
      for (var i = 0; i < initialIdeas.length; i += 1) {
        var idea = initialComments[i];
        comments.push(idea);
        this.trigger('create', idea);
      }
    };

  };

})();
