class karol::tools::nodejs {
  include nodejs::v0_10

  class{'nodejs::global': version => 'v0.10.29' }

  nodejs::module { 'bower': node_version => 'v0.10.29' }
  nodejs::module { 'coffee-script': node_version => 'v0.10.29' }
  nodejs::module { 'sass': node_version => 'v0.10.29' }
  nodejs::module { 'express': node_version => 'v0.10.29' }
  nodejs::module { 'connect': node_version => 'v0.10.29' }

  nodejs::module { 'grunt': node_version => 'v0.10.29' }
  nodejs::module { 'grunt-cli': node_version => 'v0.10.29' }
  nodejs::module { 'grunt-env': node_version => 'v0.10.29' }
  nodejs::module { 'load-grunt-config': node_version => 'v0.10.29' }
  nodejs::module { 'load-grunt-tasks': node_version => 'v0.10.29' }
  nodejs::module { 'grunt-neuter': node_version => 'v0.10.29' }
  nodejs::module { 'grunt-usemin': node_version => 'v0.10.29' }
  nodejs::module { 'grunt-preprocess': node_version => 'v0.10.29' }
  nodejs::module { 'grunt-mkdir': node_version => 'v0.10.29' }
  nodejs::module { 'grunt-copy-to': node_version => 'v0.10.29' }
  nodejs::module { 'grunt-bower-task': node_version => 'v0.10.29' }
  nodejs::module { 'grunt-express-server': node_version => 'v0.10.29' }
  nodejs::module { 'grunt-ember-templates': node_version => 'v0.10.29' }
  nodejs::module { 'grunt-contrib-coffee': node_version => 'v0.10.29' }
  nodejs::module { 'grunt-contrib-sass': node_version => 'v0.10.29' }
  nodejs::module { 'grunt-contrib-clean': node_version => 'v0.10.29' }
  nodejs::module { 'grunt-contrib-uglify': node_version => 'v0.10.29' }
  nodejs::module { 'grunt-contrib-watch': node_version => 'v0.10.29' }
  nodejs::module { 'grunt-contrib-copy': node_version => 'v0.10.29' }
  nodejs::module { 'grunt-contrib-concat': node_version => 'v0.10.29' }

  nodejs::module { 'gulp': node_version => 'v0.10.29' }
  nodejs::module { 'gulp-util': node_version => 'v0.10.29' }
  nodejs::module { 'gulp-cache': node_version => 'v0.10.29' }
  nodejs::module { 'gulp-changed': node_version => 'v0.10.29' }
  nodejs::module { 'gulp-bower': node_version => 'v0.10.29' }
  nodejs::module { 'gulp-connect': node_version => 'v0.10.29' }
  nodejs::module { 'gulp-usemin': node_version => 'v0.10.29' }
  nodejs::module { 'gulp-preprocess': node_version => 'v0.10.29' }
  nodejs::module { 'gulp-uglify': node_version => 'v0.10.29' }
  nodejs::module { 'gulp-concat': node_version => 'v0.10.29' }
  nodejs::module { 'gulp-neuter': node_version => 'v0.10.29' }
  nodejs::module { 'gulp-clean': node_version => 'v0.10.29' }
  nodejs::module { 'gulp-watch': node_version => 'v0.10.29' }
  nodejs::module { 'gulp-coffee': node_version => 'v0.10.29' }
  nodejs::module { 'gulp-sass': node_version => 'v0.10.29' }
  nodejs::module { 'gulp-sass-graph': node_version => 'v0.10.29' }
  nodejs::module { 'gulp-ember-templates': node_version => 'v0.10.29' }
  nodejs::module { 'load-common-gulp-tasks': node_version => 'v0.10.29' }
}
