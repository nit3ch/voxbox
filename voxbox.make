; ------------
; voxbox make
; ------------
; Make file for voxbox distro.

; Core version
; ------------
; Each makefile should begin by declaring the core version of Drupal that all
; projects should be compatible with.
  
core = 6.x
  
; API version
; ------------
; Every makefile needs to declare its Drush Make API version. This version of
; drush make uses API version `2`.
  
api = 2
  
; Core project
; ------------
; In order for your makefile to generate a full Drupal site, you must include
; a core project. This is usually Drupal core, but you can also specify
; alternative core projects like Pressflow. Note that makefiles included with
; install profiles *should not* include a core project.
  
; Drupal 6.x core:
; projects[drupal][version] = 6

; Modules
; --------
projects[admin_menu][version] = 1.8
projects[admin_menu][type] = "module"
projects[admin_menu][subdir] = "contrib"
projects[ctools][version] = 1.8
projects[ctools][type] = "module"
projects[ctools][subdir] = "contrib"
projects[features][version] = 1.1
projects[features][type] = "module"
projects[features][subdir] = "contrib"
projects[strongarm][version] = 2.0
projects[strongarm][type] = "module"
projects[strongarm][subdir] = "contrib"
projects[install_profile_api][version] = 2.1
projects[install_profile_api][type] = "module"
projects[install_profile_api][subdir] = "contrib"
projects[cck][version] = 2.9
projects[cck][type] = "module"
projects[cck][subdir] = "contrib"
projects[filefield][version] = 3.10
projects[filefield][type] = "module"
projects[filefield][subdir] = "contrib"
projects[filefield_paths][version] = 1.4
projects[filefield_paths][type] = "module"
projects[filefield_paths][subdir] = "contrib"
projects[audiofield][version] = 1.0
projects[audiofield][type] = "module"
projects[audiofield][subdir] = "contrib"
projects[token][version] = 1.18
projects[token][type] = "module"
projects[token][subdir] = "contrib"
projects[transliteration][version] = 3.0
projects[transliteration][type] = "module"
projects[transliteration][subdir] = "contrib"
projects[wysiwyg][version] = 2.4
projects[wysiwyg][type] = "module"
projects[wysiwyg][subdir] = "contrib"
projects[better_formats][version] = 1.2
projects[better_formats][type] = "module"
projects[better_formats][subdir] = "contrib"
projects[vertical_tabs][version] = 1.0-rc2
projects[vertical_tabs][type] = "module"
projects[vertical_tabs][subdir] = "contrib"
projects[views][version] = 2.16
projects[views][type] = "module"
projects[views][subdir] = "contrib"
projects[og][version] = 2.1
projects[og][type] = "module"
projects[og][subdir] = "contrib"
projects[voipdrupal][type] = "module"
projects[voipdrupal][download][type] = "git"
projects[voipdrupal][download][url] = "git://git.drupal.org/project/voipdrupal.git"
projects[voipdrupal][download][branch] = "6.x-1.x"
projects[voipdrupal][subdir] = "contrib"
projects[voipnode][type] = "module"
projects[voipnode][download][type] = "git"
projects[voipnode][download][url] = "git://github.com/ekes/voipnode.git"
projects[voipnode][subdir] = "contrib"
projects[voipextension][type] = "module"
projects[voipextension][download][type] = "git"
projects[voipextension][download][url] = "git://github.com/ekes/voipextension.git"
projects[voipextension][subdir] = "contrib"
projects[voipviews][type] = "module"
projects[voipviews][download][type] = "git"
projects[voipviews][download][url] = "git://github.com/ekes/voipviews.git"
projects[voipviews][download][branch] = "6.x-2.x"
projects[voipviews][subdir] = "contrib"

; Themes
; --------
projects[omega][version] = 1.0
projects[omega][type] = "theme"
projects[rubik][version] = 3.0-beta2
projects[rubik][type] = "theme"
projects[tao][version] = 3.2
projects[tao][type] = "theme"
  
; Libraries
; ---------
libraries[ckeditor][type] = "libraries"
libraries[ckeditor][download][type] = "file"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.6.2/ckeditor_3.6.2.tar.gz"