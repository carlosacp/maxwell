Meteor.startup ->

  _.each _.keys(Template), (k) ->

    if k[0] != "_" && Blaze.isTemplate Template[k]

      Template[k].events

        "click": (event, template) ->
          return unless event.altKey
          event.preventDefault()
          event.stopImmediatePropagation()
          console.log "--------------------------------"
          console.log "Template Name: " + k
          console.log "Data:"
          console.log @
          console.log "Template:"
          console.log template
          console.log "--------------------------------"
          false

        "mouseover": (event, template) ->
          return unless event.altKey
          event.preventDefault()
          event.stopImmediatePropagation()
          $target = $(event.target)
          $target.addClass "maxell-element"
          $target.one "mouseout", =>
            $target.removeClass "maxell-element"
          false
