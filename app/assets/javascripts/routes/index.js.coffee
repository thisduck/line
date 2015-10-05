Line.IndexRoute = Ember.Route.extend
  beforeModel: ->
    this.transitionTo 'volume', "volume-three"
