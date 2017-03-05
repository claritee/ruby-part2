require 'json'

class HttpResponse
  def get_status(response)
    result = JSON.parse(response)
    puts result['status']
  end
end