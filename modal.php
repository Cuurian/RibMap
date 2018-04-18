<?php
if (isset($css) && is_array($css))
  foreach ($css as $path)
    echo '<link rel="stylesheet" type="text/css" href="'.$path.'" />' ;

?>
    <script src="js/materialize.min.js"></script>

<!-- Modal Structure -->
    <div id="modal1" class="modal bottom-sheet">
      <div class="modal-content">
        <h4>Modal Header</h4>
        <p>A bunch of text</p>
      </div>
      <div class="modal-footer">
        <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">Aceptar</a>
      </div>
    </div>

<!-- Modal Structure -->
<div id="modalpic" class="modal">
      <div class="modal-content" width="80%" height="80%">
        <h4>Modal Header</h4>
        <p>A bunch of text</p>
      </div>
    </div>


    <script>
    
    $(document).ready(function(){
    $('.materialboxed').materialbox();
  }); 
    
    </script>