require 'net/http'
require 'open-uri'
require 'json'

class GetRequester

URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"

def get_response_body
  uri = URI.parse(URL)
  response = NET::HTTP.get_response_body(uri)
  response.body
end

def parse_json
  information = JSON.parse(self.get_response_body)
  information.collect do |name, occupation|
  end
end
end

names = GetRequester.new
puts names.parse_json.uniq
