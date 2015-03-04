<?php 
include('header.php');
include('connexionbdd.php');
include('prototypes.php');
?>
<script type="text/javascript" src="deplacement.js"></script>

<p>
    Points d'énergie consommés : <span id="movePoint"></span><br />
    Déplacement du personnage : <span id="persoMouving"></span>
</p>

<aside id="asideGauge">
    <div id="gaugeMax" heightGaugeMax="100" style="height: 100px;">
        <div id="gauge" heightGauge="100" style="height: 100px;"></div>
    </div>
    <p id="sentence">Points d'Énergie</p>
</aside>

<aside id="asideMouvingButtons">
    <button class="mouvingButton" name="walk" activ="true">Marche</button><br />
    <button class="mouvingButton" name="run" activ="false">Course</button><br />
    <button class="mouvingButton" name="crounching" activ="false">Accroupissement</button>
</aside>

<aside id="instructions">
    <h1>Instructions</h1>
    <p>
        Déplacement clavier : ZQSD<br />
        Déplacement souris : case adjacente<br />
        Dés/activer course clavier : maj<br />
        Désactiver accroupissement clavier : ctrl
    </p>
</aside>

<div id="minimap">
    <table>
        <?php
        prototypeDoor($bdd);
        ?>
    </table>
</div>

</body>
</html>

