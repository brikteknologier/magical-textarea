# Automatically expand a textbox when the inner text becomes bigger than its
# bounds

idCount = 0

module.exports = (textarea) ->
  textarea = $(textarea)
  id = textarea.attr('id') or "autoexpanding_textarea_#{++idCount}"
  textarea.attr('id', id)
  do checkHeight = ->
    paddingDifference = textarea.innerHeight() - textarea.height()
    if textarea[0].scrollHeight > textarea.innerHeight()
      textarea.height(textarea[0].scrollHeight - paddingDifference)
  textarea.on 'keyup change', checkHeight

  # Some browsers provide a MutationObserver to check when an element is added
  # to the dom, but not all. This is perhaps an area we could add a polyfill in 
  # the future if the polling method used below becomes problematic, but for now 
  # this is the easier solution.
  do checkDomAdded = ->
    if $("##{id}").length
      setTimeout(checkHeight, 20)
    else
      setTimeout(checkDomAdded, 20)
