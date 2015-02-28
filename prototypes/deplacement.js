/**
 * Created by Ewakhine on 23/02/2015.
 */
$(function () {
    var _perso = $('.perso');
    var _gauche = ['gauche', 'coinHG', 'coinBG'];
    var _droit = ['droit', 'coinHD', 'coinBD'];
    var _haut = ['haut', 'coinHD', 'coinHG'];
    var _bas = ['bas', 'coinBD', 'coinBG'];
    var _jauge = $("#gauge").attr("heightGauge");
    var _row, _col;
    var _nbcol = 5;

    var _contenuDiv = _perso.children('div').html();
    var _class = _perso.children('div').attr('class');


    $(document).keydown(function(e) {
        init();

        switch(e.which){
            case 90: // Z
                move(_haut, 1, 0);
                break;

            case 81: // Q
                move(_gauche, 0, 1);
                break;

            case 83: // S
                move(_bas, -1, 0);
                break;

            case 68: // D
                move(_droit, 0, -1);
                break;
        }
        refresh();
    });

    $("td").click(function() {
        init();

        switch(parseInt($(this).attr('row')) - _row){
            case -1: // Z
                if (parseInt($(this).attr('col')) == _col) {
                    move(_haut, 1, 0);
                }
                break;

            case 0: // Q
                if (parseInt($(this).attr('col')) == _col-1) {
                    move(_gauche, 0, 1);
                }
                else if(parseInt($(this).attr('col')) == _col+1 ){ //D
                    move(_droit, 0, -1);
                }
                break;

            case 1: // S
                if (parseInt($(this).attr('col')) == _col) {
                    move(_bas, -1, 0);
                }
                break;
        }
       refresh();
    });

    function init() {
        _row = parseInt(_perso.attr('row'));
        _col = parseInt(_perso.attr('col'));
        _class = _perso.children('div').attr('class');
    }

    function refresh() {
        _perso.removeClass('perso');
        _perso.children('div').html("");
        _perso = $('td:eq('+(_row*_nbcol+_col)+')');
        _perso.addClass('perso');
        _perso.children('div').html(_contenuDiv);
        $("#gauge").attr("heightGauge", _jauge);
        $("#gauge").css("height", _jauge+"px");

        if (_jauge < 0) {$("#sentence").text("Plus d'énergie !");}
    }

    function move(floor, row, col) {
        if(_class != floor[0] && _class != floor[1] && _class != floor[2]) {
            if(_jauge > 0) {
                _row -= row; _col-= col; _jauge -= 1;
            }
        }
    }
});