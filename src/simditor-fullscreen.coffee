((factory)->
  if (typeof define is 'function') and define.amd
    define ['simditor'], factory
  else
    factory window.Simditor
)((Simditor)->
  class FullScreenButton extends Simditor.Button
    constructor: ->
      super

    name: 'fullscreen'
    title: 'full=screen'
    icon: 'expand'

    command: ()->
      console.log @editor
      #外部simditor
      @editor.el.css('position', 'absolute')
        .css('left', "9px")
        .css('right', "9px")
        .css('top', "9px")
        .css('bottom', "9px")

      @editor.wrapper.css("height", "100%")

      @editor.toolbar.wrapper
        .css('width', "100%")

      toolbarHeight =  @editor.toolbar.wrapper.height()
      wrapperHeight = @editor.wrapper.height()
      @editor.body
#        .css("top", toolbarHeight)
        .css("maxHeight", wrapperHeight-toolbarHeight - 70 + "px")
        .css("overflow", "auto")

  Simditor.Toolbar.addButton(FullScreenButton)
)