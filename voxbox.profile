<?php

/**
* Return a description of the profile for the initial installation screen.
*
* @return
* An array with keys 'name' and 'description' describing this profile.
*/
function voxbox_profile_details() {
  return array(
    'name' => 'Voxbox',
    'description' => 'Select this profile to deploy a voxbox site.'
  );
}

/**
* Return an array of the modules to be enabled when this profile is installed.
*
* @return
* An array of modules to be enabled.
*/
function voxbox_profile_modules() {
  return array(
    /* optional core */
    'menu', 'dblog', 'help', 'taxonomy',
    /* other contrib */
    'install_profile_api',
    'content', 'number', 'filefield', 'optionwidgets', 'text', 'fieldgroup', 'audiofield',
    'views', 'views_ui', 'og', 'og_views', 'ctools', 'strongarm', 'features', 'token', 'transliteration', 
    'admin_menu', 'wysiwyg', 'better_formats',
    'voip', 'voipnode', 'voipextension', 'voipcall', 'voiptropo', 'voiptwilio', 'voipviews', 'voipscriptstore',
  );
}

/**
 * Implementation of hook_profile_task_list().
 */
function voxbox_profile_task_list() {
  $tasks = array();
  $tasks['install-voxbox'] = st('Install Voxbox');
  return $tasks;
}


/**
* Implementation of hook_profile_tasks().
*/
function voxbox_profile_tasks(&$task, $url) {
  // Install the core required modules and our extra modules
  $core_required = array('block', 'filter', 'node', 'system', 'user');
  install_include(array_merge(voxbox_profile_modules(), $core_required));

  // Overkill in preparation for a more interactive install option.
  if ($task == 'profile') { $task = 'install-voxbox'; }

  switch ($task) {
    case 'install-voxbox':
      return voxbox_profile_install_voxbox($url);
  }
}

/**
 * Return default array of features to install.
 */
function voxbox_profile_default_features() {
  return array(
    'voxbox_og', 'voxbox_announcements',
  );
}

/**
 * Install profile task: install-voxbox
 */
function voxbox_profile_install_voxbox($url) {
  // install features - could override list with form options 
  features_install_modules(voxbox_profile_default_features());

  // themes
  install_enable_theme('tao');
  install_admin_theme('rubik');
  install_default_theme('omega');

  // Put the navigation block in the sidebar because the sidebar looks awesome.
  install_init_blocks();
  
  // call rebuild - this makes the cck fields 'associate' to their node types properly
  features_rebuild();
}