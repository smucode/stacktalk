define ['cs!../meeting_model'], (MeetingModel) ->

  # buster.testCase 'Backbone MeetingModel',

  #   'setUp': ->
  #     @requests = []
  #     @xhr = sinon.useFakeXMLHttpRequest()
  #     @xhr.onCreate = (xhr) => @requests.push xhr

  #     @meeting = new MeetingModel
  #       id: 'foo'

  #   'tearDown': ->
  #     @xhr.restore()

  #   'fetches data from the correct URL': ->
  #     @meeting.fetch()

  #     assert.equals @requests[0].url, '/api/meetings/foo.json'

  #   'populates model with correct data': ->
  #     data =
  #       title: 'Framsia Stack Talk'
  #       start_date: '04/23/2013'
  #       start_time: '18:00'
  #       duration: 180

  #     @meeting.fetch()

  #     @requests[0].respond 200, {}, JSON.stringify(data)

  #     assert.equals @meeting.get('title'),      'Framsia Stack Talk'
  #     assert.equals @meeting.get('start_date'), '04/23/2013'
  #     assert.equals @meeting.get('start_time'), '18:00'
  #     assert.equals @meeting.get('duration'),   180