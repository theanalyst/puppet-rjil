source "https://rubygems.org"

if RUBY_VERSION =~ /1.9/
  Encoding.default_external = Encoding::UTF_8
  Encoding.default_internal = Encoding::UTF_8
end

group :development, :test do
  gem 'bodeco_module_helper', :git => 'https://github.com/bodepd/bodeco_module_helper.git', :ref => 'a0de65db2bd'
  gem 'hiera-puppet-helper', :git => 'https://github.com/bobtfish/hiera-puppet-helper', :ref => '80b597aec1a'
  gem 'rspec-puppet-utils'
  gem 'mocha', '~>0.10.5'
  gem 'librarian-puppet-simple'
end

