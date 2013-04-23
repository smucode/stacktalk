define [], ->
  class Meeting
    constructor: (args) ->
      @meeting = args.meeting
      # @meeting.on 'change:title', @render

    render: =>
      document.getElementsByTagName('body')[0].innerHTML = @meeting.get 'title'