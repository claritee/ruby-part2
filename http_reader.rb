require 'rest-client'
require 'json'

class HttpReader
  def get(url)
    response = RestClient.get(url)
    response
  end

  def post(url, body)
    response = RestClient.post(url, body)
    response
  end

  def get_status(response)
    result = JSON.parse(response)
    puts result['status']
  end

  def get_country(response)
    result = JSON.parse(response)
    result['result']['country']
  end
end