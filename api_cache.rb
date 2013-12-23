require 'api_cache'
require 'open-uri'
# require 'moneta/memcache'
require 'dalli'

url = 'http://localhost:4567/'
# APICache.store = Moneta::Memcache.new(:server => "localhost")
# APICache.store = APICache::DalliStore.new(Dalli::Client.new)

10.times do |n|
  # response = open(url).read
  response = APICache.get(url)
  p [n+1, response.size]
end
