require 'rest-client'
require_relative 'http_response'

class HttpPoster < HttpResponse

  def post(url, body)
    response = RestClient.post(url, body)
    response
  end
end