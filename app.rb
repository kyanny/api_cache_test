require 'sinatra'
require 'open-uri'

get '/' do
  open('http://b.hatena.ne.jp/entry/json/http://www.hatena.ne.jp/').read
end
