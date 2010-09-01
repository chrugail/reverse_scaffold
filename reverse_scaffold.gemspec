# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{reverse_scaffold}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Christian Moeckli"]
  s.date = %q{2010-09-01}
  s.description = %q{Generate a model from a existing database table}
  s.email = %q{chrugail@gmail.com}
  s.extra_rdoc_files = ["README.rdoc", "lib/generators/reverse_scaffold/USAGE", "lib/generators/reverse_scaffold/reverse_scaffold_generator.rb"]
  s.files = ["Manifest", "README.rdoc", "Rakefile", "lib/generators/reverse_scaffold/USAGE", "lib/generators/reverse_scaffold/reverse_scaffold_generator.rb", "reverse_scaffold.gemspec"]
  s.homepage = %q{http://github.com/chrugail/reverse_scaffold}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Reverse_scaffold", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{reverse_scaffold}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Generate a model from a existing database table}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
