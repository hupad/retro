// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function(){
	$('#finish_retro').click(function(){
		
		// are you sure you want to close?
		var sretroId = $('#finish_retro').data('sretro-id');
		console.log(sretroId);

		var request = $.ajax({
			method: 'patch',
			url: "/sretros/"+sretroId +"/notes/close"
		});

		request.done(function(msg){
			console.log("Success");
		});

		request.fail(function(msg){
			console.log(msg);
		});
	});
});