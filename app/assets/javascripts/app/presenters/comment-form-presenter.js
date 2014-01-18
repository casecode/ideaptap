(function () {

  window.CommentForm = function (options) {

    var $root = options.root;
    var comments = options.comments;
    var user_id = options.user_id

    $root.on('submit', function (e) {
      e.preventDefault();

      var newComment = {
        body: $('[name=body]', $root).val(),
        user_id: user_id
      };

      comments.create(newComment);
      console.log('New comment:', newComment);

     $root.find('input[type="text"], textarea').val(''); 
    });

  };

})();
