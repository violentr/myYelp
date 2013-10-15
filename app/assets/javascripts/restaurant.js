$(document).ready(function() {


	$("#image_link").on("ajax:success", function(e, data, status, xhr) {
		var images = JSON.parse(xhr.responseText);
		for(i=0; i<images.length; i++){
			$("#put_here").append('<img src="'+images[i]+'" width="120" height="120">')
		}
	});

	$( "#fade" ).on('click', function() {
	  $( "#put_here" ).fadeOut("slow");
	});
});