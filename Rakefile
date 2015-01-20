require 'bodeco_module_helper/rake_tasks'

require 'puppet-syntax/tasks/puppet-syntax'
PuppetSyntax.exclude_paths = ['spec/fixtures/**/*', 'pkg/**/*', 'vendor/**/*']

require 'puppet-lint/tasks/puppet-lint'
# Super mucked up, config.relative does not work in 1.1.0 yet
#  https://github.com/rodjek/puppet-lint/commit/e6e0d4fd1ab0fb6415e5ade0958210ad944b0087
Rake::Task[:lint].clear
PuppetLint::RakeTask.new :lint do |config|
  config.disable_checks = [ "class_inherits_from_params_class", "80chars", "arrow_alignment", "class_parameters_defaults"]
  config.ignore_paths = ['spec/**/*.pp', 'pkg/**/*.pp', 'vendor/**/*.pp']
  PuppetLint.configuration.relative = true
end

