require 'hyperclient'

client_id = 'ff0239ea44d165afc1ac'
client_secret = '139d6ec5e1b5f82166205b21a92c1f1f'

api = Hyperclient.new('https://api.artsy.net/api') do |api|
  api.headers['Accept'] = 'application/vnd.artsy-v2+json'
  api.headers['Content-Type'] = 'application/json'
  api.connection(default: false) do |conn|
    conn.use FaradayMiddleware::FollowRedirects
    conn.use Faraday::Response::RaiseError
    conn.request :json
    conn.response :json, content_type: /\bjson$/
    conn.adapter :net_http
  end
end

xapp_token = api.tokens.xapp_token._post(client_id: client_id, client_secret: client_secret).token

api = Hyperclient.new('https://api.artsy.net/api') do |api|
  api.headers['Accept'] = 'application/vnd.artsy-v2+json'
  api.headers['X-Xapp-Token'] = xapp_token
  api.connection(default: false) do |conn|
    conn.use FaradayMiddleware::FollowRedirects
    conn.use Faraday::Response::RaiseError
    conn.request :json
    conn.response :json, content_type: /\bjson$/
    conn.adapter :net_http
  end
end

andy_warhol = api.artist(id: 'andy-warhol')
# puts "#{andy_warhol.name} was born in #{andy_warhol.birthday} in #{andy_warhol.hometown}"
