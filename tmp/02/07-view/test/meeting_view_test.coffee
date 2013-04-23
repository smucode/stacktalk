define ['cs!../meeting', 'cs!../meeting_view'], (Meeting, MeetingView) ->
  buster.testCase 'Meeting View', 
    
    'setUp': ->
      @meeting = new Meeting
        title: 'My Meeting'

      @view = new MeetingView
        meeting: @meeting

    '// updates body with meeting title when model changes': ->
      @view.render()

      assert.equals @view.$el.html(), 'My Meeting'

      @meeting.set 'title', 'My New Meeting Title'

      assert.equals @view.$el.html(), 'My New Meeting Title'