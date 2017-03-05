module Geo
  module Utility
    def get_lat_long(response)
      result = JSON.parse(response)
      lat = result['result']['latitude']
      long = result['result']['longitude']
      "#{lat} #{long}"
    end
  end
end