require 'net/http'
require 'open-uri'
require 'json'

class GetRequester

URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"

def get_response_body
  uri = URI.parse(URL)
  response = Net::HTTP.get_response_body(uri)
  response.body
end

def parse_json
  information = JSON.parse(self.get_response_body)
  information.collect do |name, occupation|
  information
  end
end
end

information = GetRequester.new
puts information.parse_json.uniq
