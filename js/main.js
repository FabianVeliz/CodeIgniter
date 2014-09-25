function onReady(){
	
	$('#js-inputFind').autocomplete({
		source: 'http://www.dev/product/autocomplete_product'
	});
}

$(document).on('ready',onReady);




