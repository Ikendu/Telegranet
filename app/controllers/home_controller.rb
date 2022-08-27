class HomeController < ApplicationController
  def index
  end

  def group_message
    text = "Chibundu"

  # HTTParty.post("https://api.telegram.org/bot#{@api_key}/sendMessage?chat_id=#{@api_id}&text=#{text}")
    
     HTTParty.post("https://api.telegram.org/bot#{@api_key}/sendMessage",
   
       Headers: {
         'Content-Type' => 'application/json'
       },
       body: {
        api_id: @api_id,
       text: text
       }.to_json
     )

    redirect_to root_path, notice: "Successful"
  end

end
