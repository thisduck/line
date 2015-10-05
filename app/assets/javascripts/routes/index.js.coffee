Line.IndexRoute = Ember.Route.extend
  beforeModel: ->
    this.transitionTo 'volume', volume_slug: "volume-three"
