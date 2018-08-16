# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.verbose = true
  t.warning = true
  t.pattern = File.join('fix', '**', '*_fix.rb')
end

task default: %i[test]
