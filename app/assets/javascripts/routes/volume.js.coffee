Line.VolumeRoute = Ember.Route.extend
  model: (params, transition) ->
    window.volumes ||= {}
    window.volumes['volume-three'] ||= Ember.Object.create
      slug: 'volume-three'
      name: "line. volume three."
      volume: "volume three."
      city: "New York City."
      image: ""
      intro_text: "This is some intro text here."

