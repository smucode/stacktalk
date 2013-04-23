define ['cs!../meeting', 'cs!../meeting_view', 'cs!conf/rivets'], (Meeting, MeetingView) ->
  buster.testCase 'Meeting View', 
    
    'setUp': ->
      @meeting = new Meeting
        bandwidth: '512'

      @view = new MeetingView
        meeting: @meeting

    '// renders all options': ->
      @view.render()

      for bw in ['256', '512', '768', '1024', '2048']
        assert.equals @view.$el.find("option[value=#{bw}]").length, 1

      assert.equals @view.$el.find('option').length, 5

    '// selects correct option': ->
      @view.render()

      select = @view.$el.find('select')

      assert.equals select.val(), '512'

      @meeting.set 'bandwidth', '2048'

      assert.equals select.val(), '2048'

    '// updates model when select changes': ->
      @view.render()

      assert.equals @meeting.get('bandwidth'), '512'

      # @view.$el.find('select').val('1024').change()
      @view.$el.find('option[value=1024]').prop('selected', true).change()

      assert.equals @meeting.get('bandwidth'), '1024'