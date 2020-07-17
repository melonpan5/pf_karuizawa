$( function() {
    $( 'input[type="checkbox"]' ).on( 'change', function() {
        var $check = $( this ).parents( '.tag-image-box' );
        $( '.tag-image-box' ).removeClass( 'is-active' );
        if ( $( this ).prop( 'checked' ) ) {
            $check.addClass( 'is-active' );
        }
    } );
} );