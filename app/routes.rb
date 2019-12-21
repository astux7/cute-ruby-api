require 'json'

get '/ping' do
  'pong'
end

get '/feed' do
  cache_control :no_cache
  content_type :json
  status 200
  JSON.parse(File.read(File.dirname(__FILE__) + "/feed.json")).to_json
end

not_found do; end