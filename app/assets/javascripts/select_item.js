$(document).on('turbolinks:load', function() {
    $( 'input[type="radio"]' ).on( 'change', function() {
        var $checks = $( this ).closest( '.menue_box' ).find('input[type="radio"]'); 
        //上記で親要素となるラジオボタン 選択肢の集団を取得してくる。それを以下のeachで回してチェックする
        $checks.each(function(){
            if ( $( this ).prop( 'checked') ) {
                $( this ).parents( '.menue_select' ).addClass( 'is-active' );
            }
            else{ 
                $( this ).parents( '.menue_select' ).removeClass( 'is-active' );

            }
        })
    } );
} );

