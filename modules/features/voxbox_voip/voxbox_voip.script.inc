<?php

function _voxbox_voip_welcome() {
  $script = new VoipScript('voxbox_welcome');

  $script->addSay(t('Welcome to Voxbox. '));
  $script->addGosub('voipextension_basic_menu');
  $script->addSay(t('Goodbye'));
}