window.Editor = CKEDITOR

Editor.active = ->
  target = $('.editable-long-text')
  target.attr('contenteditable',true)
  target.effect('highlight', duration: 5000)
  for div in target
    CKEDITOR.inline(div)

Editor.deactive = ->
  $('.editable-long-text').attr('contenteditable', false)
  $.each(CKEDITOR.instances, (key, editor) ->
    editor.destroy()
  )

Editor.commitAll = ->
  $.each(CKEDITOR.instances, (key, editor) ->
    dataset = editor.container.$.dataset
    model = FrontendEditor.getCurrentModel(dataset.object)
    model.id = dataset.id
    model.set(dataset.attribute, editor.getData())
  )

Editor.on('instanceCreated', ( event ) ->
  editor = event.editor
  element = editor.element
  editor.on('configLoaded', () ->
    editor.config.toolbarGroups = [
      { name: 'editing',    groups: [ 'basicstyles', 'links' ] }
      { name: 'styles' }
      '/'
      { name: 'undo' }
      { name: 'clipboard',  groups: [ 'selection', 'clipboard' ] }
      { name: 'insert' }
    ]
  )
)
