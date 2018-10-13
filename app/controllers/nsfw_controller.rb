class NsfwController < ApplicationController
    
  ENDPOINT = "35.209.153.21:666"
  
  def create
    b64 = Base64.strict_encode64(params[:image].read)
    nsfw_score = HTTParty.post("http://#{ENDPOINT}", {
      body: {
        url: b64
      },
      timeout: 60
    })
    render json: nsfw_score.to_s.to_f
  end
end
