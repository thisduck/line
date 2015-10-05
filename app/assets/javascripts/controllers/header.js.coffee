Line.HeaderController = Em.Controller.extend
  needs: ['volume']

  city: (->
    @get('controllers.volume.city')
  ).property('controllers.volume.city')
