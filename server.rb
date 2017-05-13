require "sinatra"
require "httparty"
require "nokogiri"

# get '/' do
#   send_file File.join(settings.public_folder, 'job_finder.rb')
# end

# get '/' do
#   load "/Users/arturopolanco/Desktop/wyncode/web-basic/job_finder.rb"
# end

get '/' do
  url = "https://miami.craigslist.org/search/sof"
  response = HTTParty.get url
  @dom = Nokogiri::HTML.parse(response.body)
  erb :job
end
