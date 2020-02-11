class PagesController < ApplicationController
  # before_action :set_user_status
  def home
    @messages = Message.last(10)
    @message = Message.new
    binding.pry
    @online_users = User.online_users(current_user)
  end

end
