/**
 * Created by Ewakhine on 27/02/2015.
 */
$(function () {
    //var _minimap = $('#minimap');
    var _perso = $('.perso');
    var _gauche = ['gauche', 'coinHG', 'coinBG'];
    var _droit = ['droit', 'coinHD', 'coinBD'];
    var _haut = ['haut', 'coinHD', 'coinHG'];
    var _bas = ['bas', 'coinBD', 'coinBG'];
    var _row, _col;
    var _nbcol = 5;
    var _nbrow = 3;

    var _contenuDiv = _perso.children('div').html();
    var _class = _perso.children('div').attr('class');

    $("td").click(function() {
        //alert('zbra');
        _row = parseInt(_perso.attr('row'));
        _col = parseInt(_perso.attr('col'));
        _class = _perso.children('div').attr('class');


        $("#result").html("row : "+ $(this).attr('row')+ " col : " + $(this).attr('col'));

       switch(parseInt($(this).attr('row')) - _row){
            case -1: // Z
                if (parseInt($(this).attr('col')) == _col) {
                    if (_class != _haut[0] && _class != _haut[1] && _class != _haut[2]) {_row-=1;}
                }
                break;

            case 0: // Q
                if (parseInt($(this).attr('col')) == _col-1) {
                    if (_class != _gauche[0] && _class != _gauche[1] && _class != _gauche[2]) {_col -=1;}
                }
                else if(parseInt($(this).attr('col')) == _col+1 ){ //D
                    if (_class != _droit[0] && _class != _droit[1] && _class != _droit[2]) {_col +=1;}
                }
                break;

            case 1: // S
                if (parseInt($(this).attr('col')) == _col) {
                    if(_class != _bas[0] && _class != _bas[1] && _class != _bas[2]) {_row +=1;}
                }
                break;
        }
       _perso.removeClass('perso');
        _perso.children('div').html("");
        _perso = $('td:eq('+(_row*_nbcol+_col)+')');
        _perso.addClass('perso');
        _perso.children('div').html(_contenuDiv);
    });
});