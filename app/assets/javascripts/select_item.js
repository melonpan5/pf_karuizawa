$( function() {
    $( 'input[type="radio"]' ).on( 'change', function() {
        var $check = $( this ).parents( '.btn-flat-border' );
        $( '.btn-flat-border' ).removeClass( 'is-active' );
        if ( $( this ).prop( 'checked' ) ) {
            $check.addClass( 'is-active' );
        }
    } );
} );