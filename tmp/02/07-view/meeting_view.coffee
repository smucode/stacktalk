define ['backbone'], (Backbone) ->
  class Meeting extends Backbone.View

    initialize: (args) ->
      @meeting = args.meeting
      @meeting.on 'change:title', @render

    render: =>
      @$el.html @meeting.get('title')