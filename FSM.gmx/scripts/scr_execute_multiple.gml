///scr_execute_multiple(array)
if ( is_array( argument[ 0 ] ) ) {
    var array = argument[ 0 ];
    var index = 0;
    repeat ( array_length_1d( array ) ) {
        script_execute( state_array[ array[ index ] ] );
        
    }
} else {
    script_execute( state_array[ argument[ 0 ] ] );
}
