define ['cs!../meeting', 'cs!../meeting_view'], (Meeting, MeetingView) ->
  buster.testCase 'Meeting View', 
    
    'setUp': ->
      @body = document.getElementsByTagName('body')[0]

      @meeting = new Meeting
        title: 'My Meeting'

      @view = new MeetingView
        meeting: @meeting

    '// render updates body with meeting title when model changes': ->
      @view.render()

      assert.equals @body.innerHTML, 'My Meeting'

      @meeting.set 'title', 'My New Meeting Title'

      assert.equals @body.innerHTML, 'My New Meeting Title'