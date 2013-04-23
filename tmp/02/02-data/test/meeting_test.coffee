define ['cs!../meeting', '../data/meeting'], (Meeting, data) ->
  buster.testCase 'Meeting',
    'setUp': ->
      @requests = []
      @xhr = sinon.useFakeXMLHttpRequest()
      @xhr.onCreate = (xhr) => @requests.push xhr

    'tearDown': ->
      @xhr.restore()

    '// should fetch data from API': ->
      meeting = new Meeting
        id: 'foo'

      meeting.fetch()

      @requests[0].respond '200', {}, JSON.stringify(data)

      assert.equals meeting.get('title'), 'My Meeting'