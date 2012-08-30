jQuery ->
  
  letter_amount_check = (number) ->
    if number > 140
      $('#counter').css('color', 'red')
      $('#counter').text 'Too many letters. There should be less than 140.' 
    else
      $('#counter').css('color', '#333')
      $('#counter').text 140 - number

  feed_textfield = $('#micropost_content')
  letters_number = feed_textfield.val().length
  letter_amount_check letters_number

  feed_textfield.live 'input', ->
    letters_number = feed_textfield.val().length
    letter_amount_check letters_number