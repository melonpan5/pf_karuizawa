$(document).on('turbolinks:load', function() {
    $( 'input[type="checkbox"]' ).on( 'change', function() {
        var $check = $( this ).parents( '.tag_select_box' );
        if ( $( this ).prop( 'checked' ) ) {
            $check.addClass( 'is-active' );
        }
        else{
            $check.removeClass( 'is-active' );
        }
    } );
} );

