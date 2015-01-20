require 'bodeco_module_helper/rake_tasks'

require 'puppet-syntax/tasks/puppet-syntax'
PuppetSyntax.exclude_paths = ['spec/fixtures/**/*', 'pkg/**/*', 'vendor/**/*']

require 'puppet-lint/tasks/puppet-lint'
Rake::Task[:lint].clear
PuppetLint::RakeTask.new :lint do
  PuppetLint.configuration.disable_checks = ['80chars','arrow_alignment','disable_class_inherits_from_params_class','class_parameter_defaults']
  PuppetLint.configuration.ignore_paths = ["spec/**/*.pp","pkg/**/*.pp","vendor/**/*.pp"]
  PuppetLint.configuration.relative = true
end
