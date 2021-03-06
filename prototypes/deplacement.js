/**
 * Created by Ewakhine on 23/02/2015.
 */
$(function () {
    include("gestionCSS.js");

    var _perso = $('.perso');
    var _jauge = $("#gauge").attr("heightGauge");
    var _movePoint = $("#movePoint");
    var _persoMouving = $('#persoMouving');

    var _run = false, _walk = true, _crounching = false;

    var _walkCost = 1, _runCost = 2;
    var _row, _col;
    var temp;
    var _nbcol = 5;

    var _contenuDiv = _perso.children('div').html();
    var _class = _perso.children('div').attr('class');
    var _goRight = _perso.children('div').data('goright');
    var _goLeft = _perso.children('div').data('goleft');
    var _goTop = _perso.children('div').data('gotop');
    var _goBottom = _perso.children('div').data('gobottom');

    var _mouvingButtonClass = $(".mouvingButton");
    var _mouvingButtonActiv;


    //Consideration of mouving's button with a mouse
    $(_mouvingButtonClass).click(function () {
        _mouvingButtonClass.each( function() {
            if ($(this).attr('activ') == "true") {_mouvingButtonActiv = $(this);}
        });

        switch($(this).attr('name')) {
            case "walk":
                button(true, false, false);
                _persoMouving.text($(this).attr('name'));
                break;

            case "run":
                button(false, false, true);
                _persoMouving.text($(this).attr('name'));
                break;

            case "crounching":
                button(false, true, false);
                _persoMouving.text($(this).attr('name'));
                break;
        }
    });

    //Keyboard's mouving and consideration of type of mouving
    $(document).keydown(function(e) {
        init();

        switch(e.which){
            case 90: // Z
                move(_goTop, 1, 0, _run);
                break;

            case 81: // Q
                move(_goLeft, 0, 1, _run);
                break;

            case 83: // S
                move(_goBottom, -1, 0, _run);
                break;

            case 68: // D
                move(_goRight, 0, -1, _run);
                break;

            case 16: // MAJ
                temp = _run ? "walk" : "run";
                button(_run, false, !_run);
                _persoMouving.text(temp);
                break;

            case 17: // CTRL
                temp = _crounching ? "walk" : "crounching";
                button(_crounching, !_crounching, false);
                _persoMouving.text(temp);
                break;
        }
        refresh();
    });

    //Mouse's mouving
    $("td").click(function() {
        init();

        switch(parseInt($(this).attr('row')) - _row){
            case -1: // Z
                if (parseInt($(this).attr('col')) == _col) {
                    move(_goTop, 1, 0, _run);
                }
                break;

            case 0: // Q
                if (parseInt($(this).attr('col')) == _col-1) {
                    move(_goLeft, 0, 1, _run);
                }
                else if(parseInt($(this).attr('col')) == _col+1 ){ //D
                    move(_goRight, 0, -1, _run);
                }
                break;

            case 1: // S
                if (parseInt($(this).attr('col')) == _col) {
                    move(_goBottom, -1, 0, _run);
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
        _goRight = _perso.children('div').data('goright');
        _goLeft = _perso.children('div').data('goleft');
        _goTop = _perso.children('div').data('gotop');
        _goBottom = _perso.children('div').data('gobottom');
        $("#gauge").attr("heightGauge", _jauge).css("height", _jauge+"px");

        if (_jauge <= 0) {$("#sentence").text("Plus d'énergie !");}
    }

    function move(floor, row, col, run) {
        if(floor == 1) {
                if(_jauge > 0) {
                    _row -= row; _col-= col;
                    if(run){ _jauge -= _runCost; _movePoint.text(_runCost);}
                    else { _jauge -= _walkCost; _movePoint.text(_walkCost);}
                }
            }
        }


    function button(walk, crounching, run) {
        _run = run; _walk = walk; _crounching = crounching;

        $('.mouvingButton[name="crounching"]').attr('activ', crounching);
        $('.mouvingButton[name="walk"]').attr('activ', walk);
        $('.mouvingButton[name="run"]').attr('activ', run);
    }

    function include(file){
        var oScript = document.createElement("script");
        oScript.src = file;
        oScript.type = "text/javascript";
        document.body.appendChild(oScript);
    }
});