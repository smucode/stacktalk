define [
  'jquery' 
  'backbone',
  'cs!./backbone/meeting_model'
  'cs!./backbone/meeting_view'
  'cs!./rivets/meeting_view'
], ($, Backbone, MeetingModel, BackboneMeetingView, RivetsMeetingView) ->

  class Router extends Backbone.Router
    routes:
      "rivets": "rivets"
      "backbone": "backbone"

    initialize: ->
      @model = new MeetingModel
        id: 'foo'

    backbone: ->
      console.log 'backbone'
      
      view = new BackboneMeetingView
        model: @model

      # @model.fetch
      #   success: =>
      @render view

    rivets: ->
      console.log 'rivets'

      view = new RivetsMeetingView
        model: @model

      @model.fetch
        success: =>
          @render view

    render: (view) ->
      @view?.remove()
      @view = view
      $('body').append(@view.$el)
      @view.render()

  new Router

  Backbone.history.start()