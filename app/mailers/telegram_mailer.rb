class TelegramMailer < ApplicationMailer

  def send_group_message(text)
   #text = "This sends messages"
    api_key = TELEGRAM
    api_id =  5333385500
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
  end

end
