require 'rest-client'
require_relative 'http_response'
require_relative 'country/utility'
require_relative 'geo/utility'

class HttpReader < HttpResponse
  include Country::Utility, Geo::Utility

  def get(url)
    response = RestClient.get(url)
    response
  end
end