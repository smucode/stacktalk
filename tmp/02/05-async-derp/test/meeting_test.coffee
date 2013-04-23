define ['cs!../meeting', '../data/meeting'], (Meeting, data) ->
  buster.testCase 'Meeting',

    'setUp': ->
      @requests = []
      @xhr = sinon.useFakeXMLHttpRequest()
      @xhr.onCreate = (xhr) => @requests.push xhr

    'tearDown': ->
      @xhr.restore()

    '// should fetch data from API async': (done) ->
      meeting = new Meeting
        id: 'foo'

      meeting.fetch
        success: =>
          assert.equals meeting.get('title'), 'My Meeting'
          done()

      respond = =>
        @requests[0].respond '200', {}, JSON.stringify(data)

      setTimeout respond, 10








































    # 'should fetch data from API async 2': (done) ->
    #   xhr = sinon.useFakeXMLHttpRequest()
    #   xhr.onCreate = (xhr) =>
    #     setTimeout (-> xhr.respond '200', {}, JSON.stringify(data)), 0

    #   meeting = new Meeting
    #     id: 'foo'

    #   meeting.fetch
    #     success: =>
    #       assert.equals meeting.get('title'), 'My Meeting'
    #       done()