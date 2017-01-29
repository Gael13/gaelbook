class HomeController < ApplicationController

  def index
  end

  def clic



    # response = Unirest.get "https://sandbox.clicrdv.com/api/v1/groups/4/interventions", 
    #                     headers:{ "Accept" => "application/json" } {|response|
    #   response.code # Status code
    #   response.headers # Response headers
    #   @response = response.body # Parsed body
    #   logger.info("FUCK =======================> #{@response.to_json}")
    #   response.raw_body # Unparsed body
    #   #logger.info("ALLLLLLLLLLO =======================> #{response.body.to_json}")
    # }

    

    response = Unirest.get "https://sandbox.clicrdv.com/api/v1/groups/4/interventions", 
                        headers:{ "Accept" => "application/json" }


response.code # Status code
response.headers # Response headers
@response = response.body # Parsed body
logger.info("FUCK 2 =======================> #{@response.to_json}")

    # response = Unirest.get "http://httpbin.org/api/v1/groups/4/interventions", 
    #                     headers:{ "Accept" => "application/json" }, 
    #                     parameters:{ :age => 23, :foo => "bar" } {|response|
    #   response.code # Status code
    #   response.headers # Response headers
    #   response.body # Parsed body
    #   response.raw_body # Unparsed body
    # }
  end

end
