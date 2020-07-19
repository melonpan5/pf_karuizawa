$(document).on('turbolinks:load', function() {
    $( 'input[type="radio"]' ).on( 'change', function() {
        var $check = $( this ).parents( '.menue_select' );
        if ( $( this ).prop( 'checked', true ) ) {
            $check.addClass( 'is-active' );
        }
        else{ $( this ).prop( 'checked', false ) 
            $check.removeClass( 'is-active' );
        }
    } );
} );
    
// // $( function() {
// //     $( 'input[type="radio"]' ).on( 'change', function() {
// //         var $check = $( this ).parents( '.menue_select' );
// //         if ( $( this ).prop( 'checked' ) ) {
// //             $check.addClass( 'is-active' );
// //         }
// //         else{
// //             $check.removeClass( 'is-active' );
// //         }
// //     } );
// } );

