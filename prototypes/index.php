<?php 
include('header.php');
include('connexionbdd.php');
include('prototypes.php');
?>
<script type="text/javascript" src="deplacement.js"></script>

<aside id="asideGauge">
    <div id="gaugeMax" heightGaugeMax="100" style="height: 100px;">
        <div id="gauge" heightGauge="100" style="height: 100px;"></div>
    </div>
    <p id="sentence">Points d'Énergie</p>
</aside>

<div id="minimap">
    <table>
        <?php
        prototypeCollision($bdd);
        ?>
    </table>
</div>


</body>
</html>

