require 'bodeco_module_helper/rake_tasks'

require 'puppet-syntax/tasks/puppet-syntax'
PuppetSyntax.exclude_paths ||= []
PuppetSyntax.exclude_paths << "spec/fixtures/**/*"
PuppetSyntax.exclude_paths << "pkg/**/*"
PuppetSyntax.exclude_paths << "vendor/**/*"

require 'puppet-lint/tasks/puppet-lint'
Rake::Task[:lint].clear
PuppetLint::RakeTask.new :lint do |config|
config.ignore_paths = ["spec/**/*.pp", "pkg/**/*.pp","vendor/**/*.pp"]
end
