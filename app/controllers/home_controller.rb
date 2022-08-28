class HomeController < ApplicationController
  def index
  end

  def group_message
    text = "Chibundu how are you doing"
    api_key = TELEGRAM
    api_id = -697714982
  # HTTParty.post("https://api.telegram.org/bot#{api_key}/sendMessage?chat_id=#{api_id}&text=#{text}")
  # HTTParty.post("https://api.telegram.org/bot5609590504:AAHWdpmAzwhmqcUPp0MbSHgOq6OfLvWX0lw/sendMessage?chat_id=-697714982&text=group message")
    
    
    HTTParty.post("https://api.telegram.org/bot#{api_key}/sendMessage",
   
      headers: {
         'Content-Type' => 'application/json'
      },
       body: {
        chat_id: api_id,
       text: text
       }.to_json
     )

    redirect_to root_path, notice: "Successful"
  end

  def say_hello
    text = params[:text]
    TelegramMailer.send_group_message(text).deliver_now
  end
end
