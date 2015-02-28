<?php 
include('header.php');
include('connexionbdd.php');
include('prototypes.php');
?>
<script type="text/javascript" src="deplacement.js"></script>
<p>Survol : <span id="result"></span></p>
<div id="minimap">
    <table>
        <?php
        prototypeCollision($bdd);
        ?>
    </table>
</div>


</body>
</html>

