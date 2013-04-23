define ['cs!../meeting', '../data/meeting'], (Meeting, data) ->
  buster.testCase 'Meeting',
    'setUp': ->
      @requests = []
      @xhr = sinon.useFakeXMLHttpRequest()
      @xhr.onCreate = (xhr) => @requests.push xhr

    'tearDown': ->
      @xhr.restore()

    '// should fetch data from API async': ->
      meeting = new Meeting
        id: 'foo'

      meeting.fetch()

      @requests[0].respond '200', {}, JSON.stringify(data)

      assert.equals meeting.get('title'), 'My Meeting'


























    # 'should fetch data from API async 2': (done) ->
    #   meeting = new Meeting
    #     id: 'foo'

    #   meeting.fetch
    #     success: =>
    #       assert.equals meeting.get('title'), 'My Meeting'
    #       done()

    #   respond = =>
    #     @requests[0].respond '200', {}, JSON.stringify(data)

    #   setTimeout respond, 10
