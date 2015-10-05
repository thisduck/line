Line.VolumeRoute = Ember.Route.extend
  model: (params, transition) ->
    @store.find 'volume', params.volume_slug

    # window.volumes ||= {}
    # window.volumes['volume-three'] ||= Ember.Object.create
    #   slug: 'volume-three'
    #   name: "line. volume three."
    #   volume: "volume three."
    #   city: "New York City."
    #   image: ""
    #   intro_text: "This is some intro text here."

Line.VolumeIndexRoute = Ember.Route.extend
  afterModel: ->
    if this.modelFor("volume")
      this.transitionTo 'volume.photo', this.modelFor("volume").get("first_id")
