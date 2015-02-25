<?php 
include('header.php');
?>
<script type="text/javascript" src="deplacement.js"></script>

<div id="minimap">
    <table>
        <?php
        for($row = 0; $row<3 ; $row++) {
            echo '<tr>';
            for($col = 0; $col < 3; $col++){
                if($row == 1 && $col == 1) {echo '<td col='.$col.' row='.$row.' class="perso"><div id="perso">1</div></td>';}
                else {echo '<td col='.$col.' row='.$row.'></td>';}
            }
            echo '<tr>';
        }
        ?>
    </table>
</div>


</body>
</html>

