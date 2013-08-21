# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
	$(window).scroll ->
		if $('.pagination .next_page').attr('href') && $(window).scrollTop() > $(document).height() - $(window).height() - 50
			$('.pagination').text("Mas resultado en camino")
			$.getScript($('.pagination .next_page').attr('href'))