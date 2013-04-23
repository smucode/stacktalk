define ['backbone'], (Backbone) ->
  class MeetingModel extends Backbone.Model
    urlRoot: '/api/meetings/'

    sync: (method, model, options) ->
      options.url = model.url() + '.json'
      super method, model, options