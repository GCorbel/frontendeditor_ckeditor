# FrontendeditorCkeditor

This is a frontend editor for rails using the frontendeditor gem and ckeditor.

## Installation and usage

1. Add `gem 'frontendeditor_ckeditor'` in your Gemfile
2. Add file named frontendeditor.coffee (for example) and put this :

        //= require jquery
        //= require jquery_ujs
        //= require underscore
        //= require backbone
        //= require jquery.ui.effect-highlight.js
        //= require ckeditor/init_ckeditor
        //= require frontend_editor/frontend_editor

        $(document).ready ->
          FrontendEditor.init()

3. Include the new file where you to have an editable content
4. Add a css like this (feel free to customize it) :

        footer {
          position:fixed;
          left:0px;
          bottom:0px;
          width:100%;
          background:#FFF;
          padding-left: 10px;
        }

        footer a {
          margin: 10px;
        }

        footer a:hover {
          cursor: pointer
        }

5. Place your the part than you whant to be editable in the helper like this :

        <%= editable(@post) { @post.body } %>

6. Now, when you on the editable link, the field is hillighted. Click on the save button to save it.

## Parameters in the helper

You can have an editable zone, with more options, like this :

    <%= editable(@post, id: 2, object: 'pages', method: :title) do %>
      <% @post.title %>
    <% end %>

1. The `id` attribute is the id of the model you whant to change. By default it's `model.id`
2. The object is the name of your route for the action. By default it's the plural name of the class.
3. The method is the attribute than you want to change. By default it's 'body'.

## Customize your view

To customize the toolbar, you can add a tag with the id `frontend_toolbar`. The link with class `editable-mode` is the button to show other options. The button with the class `save` is the button to save. Finally, the button with `cancel` class is to cancel the editor.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
