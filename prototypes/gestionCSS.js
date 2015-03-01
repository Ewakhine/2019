/**
 * Created by Ewakhine on 01/03/2015.
 */
$(function() {
        var _mouvingButtonClass = $(".mouvingButton");
        var _mouvingButtonActiv;

        _mouvingButtonClass.each( function() {
            if ($(this).attr('activ') == "true") {_mouvingButtonActiv = $(this);}
        });

        _mouvingButtonClass.click(function() {
            if ( $(this).attr('activ') == "false") {
                $(this).attr('activ', "true");
                _mouvingButtonActiv.attr('activ', "false");
                _mouvingButtonActiv = $(this);
            }
        })
    }
);