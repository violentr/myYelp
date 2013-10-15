// PSEUDO CODE
// $("#image_link a").on('enter',function(){
// 	$.get($("#image_link a").href(), {
// 		success: function(data,status,xhr){
// 			var images = JSON.parse(xhr.responseText);
// 		  	for(i=0; i<images.length; i++){
// 		  		$("#put_here").append('<img src="'+images[i]+'" width="120" height="120">')
// 		  	}
// 		}
// 	})
// })

  // $("#image_link").on("ajax:success", function(e, data, status, xhr) {
  // 	var images = JSON.parse(xhr.responseText);
  // 	for(i=0; i<images.length; i++){
  // 		$("#put_here").append('<img src="'+images[i]+'" width="120" height="120">')
  // 	}
  // });