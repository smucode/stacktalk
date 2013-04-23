define ['cs!../meeting', 'cs!../meeting_view', 'cs!conf/rivets'], (Meeting, MeetingView) ->
  buster.testCase 'Meeting View', 
    
    'setUp': ->
      @meeting = new Meeting
        title: 'My Meeting'

      @view = new MeetingView
        meeting: @meeting

    '// renders meeting title in input': ->
      @view.render()

      input = @view.$el.find('input')

      assert.equals input.val(), 'My Meeting'

      @meeting.set 'title', 'My New Meeting Title'

      assert.equals input.val(), 'My New Meeting Title'