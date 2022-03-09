class HomeController < ApplicationController
  def index

    require 'HTTParty'
    require 'json'


    response = HTTParty.get("https://sandbox-api.coinmarketcap.com/v1/cryptocurrency/listings/latest", 
            headers: {
                Accept: 'application/json',
                'X-CMC_PRO_API_KEY': '098c2c7c-a993-4fb8-86ac-e56ed0cc1c81',
                symbol: 'BTC'
            },
            parameters: {
                start: '1',
                limit: '2',
                convert: 'AUD',
            }
        )
      @content = JSON.parse(response.body)
      @contentData = @content['data']
      #@contentDataHash = JSON.parse(@contentData)

  end




  def about
  end
end
