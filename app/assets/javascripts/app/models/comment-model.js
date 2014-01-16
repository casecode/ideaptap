(function () {

  window.Comment = function () {
    var comments = [];

    $.observable(this);

    this.create = function (newComment) {
      var self = this;

      $.post(g.contestCommentsUrl, newComment, function () {      
        comments.push(newComment);
        self.trigger('create', newComment);
      })
    };

    this.initializeWith = function (initialComments) {
      for (var i = 0; i < initialComments.length; i += 1) {
        var c = initialComments[i];
        comments.push(c);
        this.trigger('create', c);
      }
    }

  };

})();