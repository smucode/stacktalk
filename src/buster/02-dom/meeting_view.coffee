define [], ->
  class Meeting
    constructor: (title) ->
      @title = title

    render: ->
      # document.getElementsByTagName('body')[0].innerHTML = @title