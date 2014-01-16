(function () {

  window.IdeaForm = function (options) {

    var $root = options.root;
    var ideas = options.ideas;

    $root.on('submit', function (e) {
      e.preventDefault();

      var newIdea = {
        user_id: <%= current_user.id %>,
        title: $('[name=title]', $root).val(),
        category: $('[name=category]', $root).val(),
        short_desc: $('[name=short-desc]', $root).val(),
        long_desc: $('[name=long-desc]', $root).val(),
        idea_support_url: $('[name=idea-support-url]', $root).val(),
        coffer: 0
      };

      ideas.create(newIdea);
      console.log('New idea data:', newIdea);

      $root.find('input[type="text"], textarea').val('');
      $root.find('select').val('default');
    });

  };

})();
