<?php
/**
 * Created by PhpStorm.
 * User: Ewakhine
 * Date: 26/02/2015
 * Time: 19:31
 */

function prototypeBase($bdd) {
    $rowmax = 3;

    for($row = 0; $row < $rowmax ; $row++) {
        echo '<tr>';
        $map1 = $bdd->query("SELECT * FROM structure WHERE id_map=3 AND w_posY=".$row." ORDER BY w_posX ASC");
        while ($map = $map1->fetch()) {
            $wall1 = $bdd->query("SELECT * FROM wall WHERE id=".$map["id_wall"]);
            $wall = $wall1->fetch();
            if($row == 1 && $map['w_posX'] == 1) {echo '<td col='.$map['w_posX'].' row='.$map['w_posY'].' class="perso"><div id="sol" class="'.$wall['sprite'].'" style="background-image: url(../img/'.$wall["sprite"].'.png); background-repeat: no-repeat;"><div id="perso">1</div></div></td>';}
            else {echo '<td col='.$map["w_posX"].' row='.$map["w_posY"].'><div id="sol" class="'.$wall['sprite'].'" style="background-image: url(../img/'.$wall['sprite'].'.png); background-repeat: no-repeat;"></div></td>';}
            $wall1->closeCursor();
        }
        echo '<tr>';
    }
    $map1->closeCursor();
}

function prototypeCollision($bdd) {
    $rowmax = 5;

    for($row = 0; $row < $rowmax ; $row++) {
        echo '<tr>';
        $map1 = $bdd->query("SELECT * FROM structure WHERE id_map=4 AND w_posY=".$row." ORDER BY w_posX ASC");
        while ($map = $map1->fetch()) {
            $wall1 = $bdd->query("SELECT * FROM wall WHERE id=".$map["id_wall"]);
            $wall = $wall1->fetch();
            if($row == 1 && $map['w_posX'] == 1) {echo '<td col='.$map['w_posX'].' row='.$map['w_posY'].' class="perso"><div id="sol" class="'.$wall['sprite'].'" style="background-image: url(../img/'.$wall["sprite"].'.png); background-repeat: no-repeat;"><div id="perso">1</div></div></td>';}
            else {echo '<td col='.$map["w_posX"].' row='.$map["w_posY"].'><div id="sol" class="'.$wall['sprite'].'" style="background-image: url(../img/'.$wall['sprite'].'.png); background-repeat: no-repeat;"></div></td>';}
            $wall1->closeCursor();
        }
        echo '<tr>';
    }
    $map1->closeCursor();
}
?>