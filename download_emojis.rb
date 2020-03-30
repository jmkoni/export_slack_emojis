require 'json'
require 'open-uri'

Dir.mkdir('emojis') unless Dir.exist?('emojis')

number = Integer(ARGV[0]) || 10
(1..number).each do |i|
  file = File.open("emoji#{i}.json")
  data = JSON.load file
  data["emoji"].each do | emoji |
    begin
      url = emoji["url"]
      file_type = url.split(".").last
      file_name = emoji["name"] + "." + file_type
      next if File.file?("emojis/#{file_name}")
      puts "writing #{file_name}"
      File.write "emojis/#{file_name}", open(url).read
    rescue
      puts "Error downloading: #{emoji["url"]}"
      next
    end
  end
end
