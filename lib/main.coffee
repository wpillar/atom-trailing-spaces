module.exports =
  config:
    enableForIndentation:
      type: 'boolean'
      default: false
      description: 'Enable highlight for lines containing only indentation'

  activate: (state) ->
    atom.config.observe 'trailing-spaces.enableForIndentation', (enable) ->
      if enable
        document.body.classList.add('trailing-spaces-highlight-indentation')
      else
        document.body.classList.remove('trailing-spaces-highlight-indentation')

