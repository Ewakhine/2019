<?php 
include('header.php');
include('connexionbdd.php');
?>
<script type="text/javascript" src="deplacement.js"></script>

<div id="minimap">
    <table>
        <?php

       /* $map1 = $bdd->query("SELECT * FROM structure WHERE id_map=3");
        echo '<br /><div id="map">';

        while ($map = $map1->fetch()) {
            $wall1 = $bdd->query("SELECT * FROM wall WHERE id=".$map["id_wall"]);
            $wall = $wall1->fetch();
            echo '<div class="caseF" style="top:'.($map["w_posY"]*40).'px; left:'.($map["w_posX"]*40).'px; background-image: url(img/'.$wall["sprite"].'.png);"></div>';
            $wall1->closeCursor();
        }
        $map1->closeCursor();*/


        $rowmax = 3; $colmax = 3;


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



/*
       for($row = 0; $row < $rowmax ; $row++) {
            echo '<tr>';
            for($col = 0; $col < $colmax; $col++){
                if($row == 1 && $col == 1) {echo '<td col='.$col.' row='.$row.' class="perso"><div id="sol" class="base"><div id="perso">1</div></div></td>';}
                else if ($col == 0 ) {echo '<td col='.$col.' row='.$row.'><div id="sol" class="gauche"><div id="gauche"></div></div></td>';}
                else {echo '<td col='.$col.' row='.$row.'><div id="sol"></div></td>';}
            }
            echo '<tr>';
        }*/
        ?>
    </table>
</div>


</body>
</html>

