define ['backbone', 'rivets', 'text!./meeting_view.html'], (Backbone, Rivets, template) ->
  class Meeting extends Backbone.View

    initialize: (args) ->
      @meeting = args.meeting

    render: =>
      @$el.html(template)
      Rivets.bind @$el, meeting: @meeting