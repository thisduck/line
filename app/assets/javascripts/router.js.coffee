# For more information see: http://emberjs.com/guides/routing/

Line.Router.reopen
  location: 'history'

Line.Router.map ->
  @resource 'volume', path: '/:volume_slug', ->
    @route 'photo', path: '/photo/:id'

