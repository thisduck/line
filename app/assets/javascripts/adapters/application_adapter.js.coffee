# Override the default adapter with the `DS.ActiveModelAdapter` which

DS.RESTAdapter.reopen
  namespace: 'api'

Line.ApplicationAdapter = DS.ActiveModelAdapter.extend({

})
