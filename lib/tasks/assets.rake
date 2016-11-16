Rake::Task["assets:precompile"].clear
   namespace :assets do
     task 'precompile' do
     puts "Not pre-compiling assets..."
     puts "make install"
   end
end
