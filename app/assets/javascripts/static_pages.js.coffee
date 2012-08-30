# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  feed_textfield = $('#micropost_content')
  letters_number = feed_textfield.val().length
  if letters_number > 140
      $('#counter').css('color', 'red')
      $('#counter').text 'Too many letters. There should be less than 140.' 
    else
      $('#counter').css('color', '#333')
      $('#counter').text 140 - letters_number

  feed_textfield.live 'input', ->
    letters_number = feed_textfield.val().length

    if letters_number > 140
      $('#counter').css('color', 'red')
      $('#counter').text 'Too many letters. There should be less than 140.' 
    else
      $('#counter').css('color', '#333')
      $('#counter').text 140 - letters_number