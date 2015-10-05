Line.VolumePhotoRoute = Ember.Route.extend
  model: (params, transition) ->
    @store.find 'photo', params.id

  actions:
    next_photo: ->
      id = this.currentModel.get("next_id")
      if id?
        @transitionTo('volume.photo', id)

    previous_photo: ->
      id = this.currentModel.get("previous_id")
      if id?
        @transitionTo('volume.photo', id)

  # afterModel: () ->
  #   console.log 'tjing'


