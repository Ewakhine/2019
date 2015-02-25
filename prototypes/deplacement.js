/**
 * Created by Ewakhine on 23/02/2015.
 */
$(function () {
    //var _minimap = $('#minimap');
    var _perso = $('.perso');
    var _row, _col;
    var _nbcol = 3;
    var _nbrow = 3;

    var _contenuDiv = _perso.html();

    $(document).keydown(function(e) {
        _row = parseInt(_perso.attr('row'));
        _col = parseInt(_perso.attr('col'));
        switch(e.which){
            case 90: // Z
                _row -= 1;
                break;

            case 81: // Q
                _col -= 1;
                break;

            case 83: // S
                _row += 1;
                break;

            case 68: // D
                _col += 1;
                break;
        }
        _perso.removeClass('perso');
        _perso = $('td:eq('+(_row*_nbcol+_col)+')');
        _perso.addClass('perso');
    });
});