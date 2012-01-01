require 'rake'
require 'rake/testtask'
require 'rdoc/task'

desc 'Default: run unit tests.'
task :default => :test

desc 'Test the directed-acyclic-graph gem.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for the directed-acyclic-graph gem.'
RDoc::Task.new do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'DirectedAcyclicGraph'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README.rdoc')
  rdoc.rdoc_files.include('lib/dag/*.rb')
end

# setup to build plugin as a gem
begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "directed-acyclic-graph"
    gemspec.summary = "Directed Acyclic Graph Gem"
    gemspec.description = "Directed Acyclic Graph, is a Ruby gem which allows you to represent a DAG system in Ruby."
    gemspec.authors = ["Robert Schmitt"]
    gemspec.email = "resgraph@gmail.com"
    gemspec.rubyforge_project = "directed-acyclic-graph"
    gemspec.homepage = "http://github.com/resgraph/directed-acyclic-graph"
    gemspec.files = FileList["[A-Z]*", "{lib,test}/**/*"]
  end
rescue
  puts "Jeweler or one of its dependencies is not installed."
end
