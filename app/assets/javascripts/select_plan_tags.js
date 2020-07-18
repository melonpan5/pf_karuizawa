$( function() {
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



// $( function() {
//     $( 'input[type="checkbox"]' ).on( 'change', function() {
//         var $check = $( this ).parents( '.tag_select_box' );
//         $( '.tag_select_box' ).removeClass( 'is-active' );
//         if ( $( this ).prop( 'checked' ) ) {
//             $check.addClass( 'is-active' );
//         }
//     } );
// } );