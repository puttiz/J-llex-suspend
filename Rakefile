require "date"
require "jekyll"
require 'rake/clean'

LAYOUT_SRC = FileList.new('_includes/*.haml','_layouts/*.haml', '*.haml')
LAYOUT_HTML = LAYOUT_SRC.ext('html')
SCSS = FileList.new('assets/c/*.scss')
CSS = SCSS.ext('css')
LAYOUT = LAYOUT_HTML + CSS

CLOBBER.include('_site')
CLEAN.include(LAYOUT)

rule '.html' => ['.haml'] do |t|
    sh %{ haml -E utf-8 #{t.source} #{t.name.sub(/_haml\./,'.')} }
end

rule '.css' => ['.scss'] do |t|
    sh %{ sass -t compressed #{t.source} #{t.name} }
end

task :default => :auto

desc 'Generate html and css from sources'
task :build => LAYOUT do
end

desc "Build site auto"
task :auto do
  jekyll "--auto"
end

desc "Build and deploy"
task :deploy => :build do
  sh ""
end

def jekyll(opts = "")
  sh "rm -rf _site"
  sh "jekyll " + opts
end