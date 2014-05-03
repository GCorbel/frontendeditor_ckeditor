window.Editor = CKEDITOR

Editor.active = ->
  @el().attr('contenteditable',true)
  @el().effect('highlight', duration: 5000)
  for div in @el()
    CKEDITOR.inline(div)

Editor.deactive = ->
  @el().attr('contenteditable', false)
  $.each(CKEDITOR.instances, (key, editor) ->
    editor.destroy()
  )

Editor.commitAll = ->
  $.each(CKEDITOR.instances, (key, editor) ->
    dataset = editor.container.$.dataset
    model = FrontendEditor.getCurrentModel(dataset.object)
    model.set('id', dataset.id)
    model.set(dataset.attribute, editor.getData())
  )

Editor.el = ->
  $('.editable-long-text')

Editor.on('instanceCreated', ( event ) ->
  editor = event.editor
  element = editor.element
  editor.on('configLoaded', () ->
    editor.config.extraPlugins = 'sourcedialog'
    editor.config.toolbarGroups = [
      { name: 'source',    groups: [ 'sourcedialog' ] }
      { name: 'editing',    groups: [ 'basicstyles', 'links' ] }
      { name: 'styles' }
      '/'
      { name: 'undo' }
      { name: 'clipboard',  groups: [ 'selection', 'clipboard' ] }
      { name: 'insert' }
    ]
  )
)
