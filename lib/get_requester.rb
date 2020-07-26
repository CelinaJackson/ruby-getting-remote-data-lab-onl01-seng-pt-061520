require 'net/http'
require 'open-uri'
require 'json'

class GetRequester

URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"

def get_response_body
  uri = URI.parse(URL)
  response = NET::HTTP.get_response(uri)
  response.body
end

def parse_json
  names = JSON.parse(self.get_response_body)
  names.collect do |name|
    name
  end
end
end

names = GetRequester.new
puts names.parse_json.uniq
