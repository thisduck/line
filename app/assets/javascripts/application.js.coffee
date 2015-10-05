#= require jquery
#= require jquery_ujs
#= require handlebars
#= require mousetrap
#= require ember
#= require ember-data
#= require active-model-adapter
#= require_self
#= require line
#= require bootstrap

# for more details see: http://emberjs.com/guides/application/
window.Line = Ember.Application.create
  CSRF_TOKEN: Em.$('meta[name="csrf-token"]').attr('content')

# Set the CRSF token to be added as a header to all ajax requests
Em.$.ajaxPrefilter (options, originalOptions, xhr) ->
  if Line.CSRF_TOKEN
    xhr.setRequestHeader 'X-CSRF-Token', App.CSRF_TOKEN
