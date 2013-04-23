define ['cs!../meeting'], (Meeting) ->
  buster.testCase 'Meeting',
    'setUp': ->
      @requests = []
      @xhr = sinon.useFakeXMLHttpRequest()
      @xhr.onCreate = (xhr) => @requests.push xhr

    'tearDown': ->
      @xhr.restore()

    '// should fetch meeting using correct URL': ->
      meeting = new Meeting
        id: 'foo'

      meeting.fetch()

      assert.equals @requests[0].url, '/meetings/foo'