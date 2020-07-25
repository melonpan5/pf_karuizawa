$(document).on('turbolinks:load', function() {
    $('input[type="checkbox"]').click('change', function() {
    // $('.tag_select_box').on('click',function(){
        var check = $(this).parents( '.tag_select_box' );
        
        // $(this).toggleClass('is-active')
        if ( $(this).prop('checked') ) {
            check.addClass('is-active');
            console.log(check)
        }
        else{
            check.removeClass('is-active');
            console.log(check)
        }
    // } );
} );
} );

