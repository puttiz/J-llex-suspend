require "date"
require "jekyll"

task :default => :server

desc "Build site with Jekyll"
task :build do
  jekyll
end

desc "Build site with Jekyll-ext"
task :ebuild do
  ejekyll
end

desc "Build and start server with --auto"
task :server do
  jekyll "--server --auto"
end

desc "Build and deploy"
task :deploy => :build do
  sh ""
end

def jekyll(opts = "")
  sh "rm -rf _site"
  sh "jekyll " + opts
end

def ejekyll(opts = "")
  sh "rm -rf _site"
  sh "ejekyll " + opts
end