define [
  'cs!../meeting_view'
  'cs!../meeting_model'
  'cs!conf/rivets'
], (MeetingView, MeetingModel) ->

  # buster.testCase 'Rivets MeetingView',

  #   'setUp': ->
  #     @model = new MeetingModel
  #       title: 'Framsia Stack Talk'
  #       start_date: '2013-04-23'
  #       start_time: '18:00'
  #       duration: 180

  #     @view = new MeetingView
  #       model: @model

  #   'should update DOM on render': ->
  #     @view.render()

  #     getVal = (name) =>
  #       @view.$el.find("input[name=#{name}]").val()

  #     assert.equals getVal('title'),      'Framsia Stack Talk'
  #     assert.equals getVal('start_date'), '2013-04-23'
  #     assert.equals getVal('start_time'), '18:00'
  #     assert.equals getVal('duration'),   180

  #   'should update model when view changes': ->
  #     @view.render()

  #     @view.$el.find("input[name=title]").val('New Title').change()
  #     @view.$el.find("input[name=start_date]").val('2013-04-23').change()
  #     @view.$el.find("input[name=start_time]").val('18:00').change()
  #     @view.$el.find("input[name=duration]").val(60).change()

  #     assert.equals @model.get('title'),      'New Title'
  #     assert.equals @model.get('start_date'), '2013-04-23'
  #     assert.equals @model.get('start_time'), '18:00'
  #     assert.equals @model.get('duration'),   60

  #   'should save model when save is clicked': ->
  #     @view.render()

  #     @model.save = @spy()

  #     @view.$el.find("button").click()

  #     assert.calledOnce @model.save