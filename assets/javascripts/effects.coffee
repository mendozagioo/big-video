$(document).ready ->
  # Resizing functions
  resizing_video = ->
    width = $(window).width()
    height = $(window).height()
    rest = width / height
    w_original = 846
    h_original = 476
    setting = w_original / h_original
    desition = height / h_original
    desition = width / w_original if rest >= setting

    if width < 569
      $('#video').css
        width: 1500
        height: 970
    else
      $('#video').css
        width: desition * w_original
        height: desition * h_original

  resizing_home = ->
    width = $(window).width()
    height = $(window).height()

    $('#home').css
      width: width
      height: height

  resizing_video()
  resizing_home()

  $(window).resize ->
    resizing_video()
    resizing_home()
