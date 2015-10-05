Line.PhotoViewComponent = Ember.Component.extend
  next_photo: "next_photo"
  previous_photo: "previous_photo"
  width: $(window).width()

  didInsertElement: () ->
    photo = @get('photo')
    that = this

    Mousetrap.bind 'right', ->
      that.sendAction("next_photo")

    Mousetrap.bind 'left', ->
      that.sendAction("previous_photo")

    resizeHandler = ->
      that.set('width', $(window).width())
      that.rerender()

    that.set('resizeHandler', resizeHandler)
    $(window).bind('resize', that.get('resizeHandler'))

  willDestroyElement: () ->
    Mousetrap.unbind 'right'
    Mousetrap.unbind 'left'
    $(window).unbind('resize', that.get('resizeHandler'))

  url: (->
    console.log @get('width')
    @get "photo.image.size_1000.url"
  ).property('width', 'photo')
