(function () {

  window.CommentForm = function (options) {

    var $root = options.root;
    var comments = options.comments;

    $root.on('submit', function (e) {
      e.preventDefault();

      var newComment = {
        user_id: <%= current_user.id %>,
        idea_id: <%= current_idea.id %>,
        body: $('[name=body]', $root).val()
      };

      comments.create(newComment);
      console.log('New comment:', newComment);

     $root.find('input[type="text"], textarea').val(''); 
    });

  };

})();
