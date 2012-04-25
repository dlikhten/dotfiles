#!/usr/bin/env rake

require 'rake'
require 'fileutils'

task :default => [:install]

task :install do
  exclude_list = ['~/.', '~/..', '~/.rvmrc']
  cwd = File.expand_path("..", __FILE__)

  Dir.glob("#{cwd}/.*").each do |item|
    target = "~#{item.sub(cwd, "")}"
    next if exclude_list.include?(target)
    FileUtils.ln_s(item, File.expand_path(target), force: true, verbose: true)
  end

  FileUtils.touch File.expand_path('~/.bash_custom_alias')
end
