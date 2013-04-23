define [
  'jquery'
  'backbone'
  'text!./meeting_view.html'
], ($, Backbone, template) ->

  class UserView extends Backbone.View

    initialize: (args) ->
      @model = args.model

    render: ->
      @$el.append template
    #   @$el.find("input[name=title]").val @model.get('title')
    #   @$el.find("input[name=start_date]").val @model.get('start_date')
    #   @$el.find("input[name=start_time]").val @model.get('start_time')
    #   @$el.find("input[name=duration]").val @model.get('duration')

    # events:
    #   'click button':                  'saveModel'
    #   'change input[name=title]':      'updateModelFromView'
    #   'change input[name=start_date]': 'updateModelFromView'
    #   'change input[name=start_time]': 'updateModelFromView'
    #   'change input[name=duration]':   'updateModelFromView'
    
    # updateModelFromView: (e) =>
    #   target = $(e.target)
    #   attr = target.attr('name')
    #   @model.set attr, target.val()

    # saveModel: =>
    #   @model.save()