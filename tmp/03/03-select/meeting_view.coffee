define ['backbone', 'rivets', 'text!./meeting_view.html'], (Backbone, Rivets, template) ->
  class Meeting extends Backbone.View

    initialize: (args) ->
      @meeting = args.meeting

    render: =>
      @$el.html(template)
      Rivets.bind @$el,
        meeting: @meeting
        options: bandwidth: @createBandwidthList()

      @meeting.trigger 'change:bandwidth'

    createBandwidthList: ->
      for bandwidth in ['256', '512', '768', '1024', '2048']
        name: bandwidth