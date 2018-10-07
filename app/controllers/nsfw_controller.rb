class NsfwController < ApplicationController
    
  ENDPOINT = "35.209.153.21:666"
  
  def index
    nsfw_score = HTTParty.post("http://#{ENDPOINT}", {
      body: {
        url: params[:image]
      },
      timeout: 10
    })
    render json: nsfw_score.to_s.to_f
  end
end
