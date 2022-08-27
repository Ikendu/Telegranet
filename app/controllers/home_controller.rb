class HomeController < ApplicationController
  def index
  end

  def group_message
    HTTParty.post('https://api.telegram.org/bot5609590504:AAHWdpmAzwhmqcUPp0MbSHgOq6OfLvWX0lw/sendMessage?chat_id=5333385500&text=group message')
    redirect_to root_path, notice: "Successful"
  end
  
end
