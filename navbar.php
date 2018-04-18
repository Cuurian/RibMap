<?php
if (isset($css) && is_array($css))
  foreach ($css as $path)
    echo '<link rel="stylesheet" type="text/css" href="'.$path.'" />' ;
?>

  <div class="navbar-fixed" >
    <nav>
      <div class="nav-wrapper deep-purple darken-4" style="box-shadow: 10px;">
        <a href="#!" class="brand-logo" style="margin-left:5px;  text-shadow: 4px 4px 2px #000000;">RibMap</a>
        <ul class="right hide-on-med-and-down" style="text-shadow: 4px 4px 2px #000000;">
          <li><a href="#">Modo Edición</a></li>
          <li><a href="#">Acerca De</a></li>

        </ul>
      </div>
    </nav>
  </div>