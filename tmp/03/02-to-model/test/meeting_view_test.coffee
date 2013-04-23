define ['cs!../meeting', 'cs!../meeting_view', 'cs!conf/rivets'], (Meeting, MeetingView) ->
  buster.testCase 'Meeting View', 
    
    'setUp': ->
      @meeting = new Meeting
        title: 'My Meeting'

      @view = new MeetingView
        meeting: @meeting

    '// model changes when input is changed': ->
      @view.render()

      assert.equals @meeting.get('title'), 'My Meeting'

      @view.$el.find('input').val('My New Meeting Title').change()

      assert.equals @meeting.get('title'), 'My New Meeting Title'