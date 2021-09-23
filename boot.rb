current_path = File.expand_path("../", __FILE__)
Dir["#{current_path}/app/*.rb"].each { |file| require file }
