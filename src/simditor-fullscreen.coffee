((factory)->
  if (typeof define is 'function') and define.amd
    define ['simditor'], factory
  else
    factory window.Simditor
)((Simditor)->
  class FullScreenButton extends Simditor.Button
    constructor: ->
      @isExpand = false
      super

    name: 'fullscreen'
    title: 'full=screen'
    icon: 'expand'

    #保存expand之前的状态
    saveStatus: ->

    setIcon: (icon)->
      @el.find("span").removeClass().addClass("fa fa-#{icon}")

    #恢复到expand之前的状态
    resetStatus: ->

    #全屏
    doFullScreen: ->
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

    command: ()->
      #如果已经处于全屏状态
      if @isExpand
        @setIcon('expand')
        @resetStatus()
        @isExpand = false
        return

      @setIcon('compress')
      @saveStatus()
      @isExpand = true
      @doFullScreen()



  Simditor.Toolbar.addButton(FullScreenButton)
)