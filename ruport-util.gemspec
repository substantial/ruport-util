spec = Gem::Specification.new do |spec|
  spec.name = "ruport-util"
  spec.version = "0.14.1"
  spec.platform = Gem::Platform::RUBY
  spec.summary = "A set of tools and helper libs for Ruby Reports"
  spec.files =  Dir.glob("{example,lib,test,bin}/**/**/*") +
                      ["Rakefile"]
  
  spec.require_path = "lib"
  
  spec.test_files = Dir[ "test/test_*.rb" ]
  spec.bindir = "bin"
  spec.executables = ["rope", "csv2ods"]
  spec.has_rdoc = true
  spec.extra_rdoc_files = %w{INSTALL}
  spec.rdoc_options << '--title' << 'ruport-util Documentation' <<
                       '--main' << 'INSTALL' << '-q'
  spec.add_dependency('ruport', ">=1.6.0")
  spec.add_dependency('mailfactory',">=1.2.3")
  spec.add_dependency('rubyzip','>=0.9.1')
  spec.author = "Gregory Brown"
  spec.email = "  gregory.t.brown@gmail.com"
  spec.rubyforge_project = "ruport"
  spec.homepage = "http://code.rubyreports.org"
  spec.description = <<END_DESC
  ruport-util provides a number of utilities and helper libs
  for Ruby Reports
END_DESC
end
