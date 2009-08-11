# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{gemcutter}
  s.version = "0.0.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Nick Quaranto"]
  s.date = %q{2009-08-10}
  s.email = %q{nick@quaran.to}
  s.extra_rdoc_files = [
    "README.textile"
  ]
  s.files = [
    "lib/commands/abstract_command.rb",
     "lib/commands/migrate.rb",
     "lib/commands/push.rb",
     "lib/commands/tumble.rb",
     "lib/rubygems_plugin.rb"
  ]
  s.homepage = %q{http://github.com/qrush/gemcutter}
  s.post_install_message = %q{
========================================================================
           Thanks for installing Gemcutter! You can now run:

    gem tumble        use Gemcutter as your primary RubyGem source
    gem push          publish your gems for the world to use and enjoy
    gem migrate       take over your gem from RubyForge on Gemcutter

========================================================================

}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{gemcutter}
  s.rubygems_version = %q{1.3.3}
  s.summary = %q{Awesome gem hosting}
  s.test_files = [
    "test/command_helper.rb",
     "test/unit/commands/migrate_command_test.rb",
     "test/unit/commands/tumble_command_test.rb",
     "test/unit/commands/push_command_test.rb",
     "test/unit/commands/abstract_command_test.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<json>, [">= 0"])
    else
      s.add_dependency(%q<json>, [">= 0"])
    end
  else
    s.add_dependency(%q<json>, [">= 0"])
  end
end
