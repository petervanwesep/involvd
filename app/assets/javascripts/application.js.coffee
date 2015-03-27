# This is a manifest file that'll be compiled into application.js, which will include all the files
# listed below.
#
# Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
# or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
#
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# compiled file.
#
# Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
# about supported directives.
#
#= require_tree .

$.initialize = (fn) -> $(document).ready -> fn()

$.initialize ->
  $('#volunteer').click -> $('#button-label').text('Volunteer')
  $('#nonprofit').click -> $('#button-label').text('Nonprofit organization')
  $('#submit').click ->
    if $('#email-address').val().length
      $('.sign-up-form').animate(
        {opacity: "toggle"}, 250, "linear", -> $(this).after( "<div class='contact-vfo'>Thank you! We'll be in touch with you soon!</div>" );
      )
  $('#content').show()
