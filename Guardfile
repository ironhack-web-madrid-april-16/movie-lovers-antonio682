guard :rspec, cmd: 'bundle exec rspec --color' do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$})     { |m| "spec/lib/#{m[1]}_spec.rb" }
  watch('server.rb')  { "spec/server_spec.rb" }
end
