# coding: utf-8
lib = File.expand_path('../lib, __FILE__')
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
    spec.name = "NAME"
    spec.version = '1.0'
    spec.authors = [Tim Sullivan]
    spec.email = ["timsullivan97@gmail.com"]
    spec.summary = %q{Creating Skeleton Project Directory}
    spec.description = %q{This is my first project using gemspec so I am trying it out cuz I'm a n00b. lul.}
    spec.homepage = "http://notsureyet.com/"
    spec.license = "MIT"

    spec.files = ['lib/NAME.rb']
    spec.executables = ['bin/NAME']
    spec.test_files = ['tests/test_NAME.rb']
    spec.require_paths = ["lib"]
end