#!/usr/bin/env rake
require File.expand_path('../lib/footable-rails/version', __FILE__)

desc "Update assets"
task :update do
  system("rm -rf FooTable-src")
  system("git clone git://github.com/bradvin/FooTable.git FooTable-src")
  system("git status")
end

desc "Build"
task "build" do
  system("gem build footable-rails.gemspec")
end

desc "Build and publish the gem"
task :publish => :build do
  system("gem push footable-rails-#{FootableRails::Rails::VERSION}.gem")
end