require 'bodeco_module_helper/rake_tasks'

require 'puppet-syntax/tasks/puppet-syntax'
PuppetSyntax.exclude_paths = ['spec/fixtures/**/*', 'pkg/**/*', 'vendor/**/*']

require 'puppet-lint/tasks/puppet-lint'
Rake::Task[:lint].clear
PuppetLint::RakeTask.new :lint do |config|
  config.relative = true
  config.disable_80chars
  config.disable_arrow_alignment
  config.disable_class_parameter_defaults
  config.disable_class_inherits_from_params_class
  config.disable_autoloader_layout
  config.ignore_paths = ["spec/**/*.pp","pkg/**/*.pp","vendor/**/*.pp"]
end
