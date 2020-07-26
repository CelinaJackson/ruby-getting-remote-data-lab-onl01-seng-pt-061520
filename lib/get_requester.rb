require 'net/http'
require 'open-uri'
require 'json'

class GetRequester

URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"

def get_response_body
  uri = URI.parse("https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json")
  response = Net::HTTP.get_response(uri)
  response.body
end

def parse_json
  information = JSON.parse(response.body)
  information.collect do |info|
  info
  end
end
end

information = GetRequester.new
puts information.parse_json.uniq
