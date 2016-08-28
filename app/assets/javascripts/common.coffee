$ ->
  # Remove success and notice flash messages
  $('.alert').delay(2500).slideUp(750)

  # Toggle classes on the wrapper and sidebar for push menu
  $('.hamburger-icon').on 'click', (e) ->
    e.preventDefault()
    $('.wrapper, .sidebar, .hamburger-icon').toggleClass('sidebar-is-open')
