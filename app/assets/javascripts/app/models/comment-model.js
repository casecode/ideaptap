(function () {

  window.Comment = function () {
    var comments = [];

    $.observable(this);

    this.create = function (newComment) {
      var self = this;

      $.post(g.ideaCommentsUrl, newComment, function () {
        comments.push(newComment);
        console.log(comments);

        self.trigger('create', newComment);
      });
    };

    this.initializeComments = function (initialComments) {
      for (var i = 0; i < initialComments.length; i += 1) {
        var comment = initialComments[i];
        comments.push(comment);
        this.trigger('create', comment);
      }
    };

  };

})();
