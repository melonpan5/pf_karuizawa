window.onpageshow = function() {
    $('input[type="checkbox"]').each(function(){
        $(this).removeAttr('checked').prop('checked', false).change(); 
    });
  }

$(document).on('turbolinks:load', function() {

    // $('input[type="checkbox"]').each(function(){
    //     console.log(this, $( this ).prop( 'checked'));
    //     $(this).removeAttr('checked').prop('checked', false).change(); 
    //     // チェック外す
    // });
    
    $('input[type="checkbox"]').click('change', function() {
        var check = $(this).parents( '.tag_select_box' );
        if ( $(this).prop('checked') ) {
            check.addClass('is-active');
        }
        else{
            check.removeClass('is-active');
        }  
    } );

} );

