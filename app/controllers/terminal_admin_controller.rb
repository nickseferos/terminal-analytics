class TerminalAdminController < ApplicationController
  before_action :authenticate_user!
  
  def users
    if params[:approved] == "false"
      @users = User.where(approved: false)
    else
      @users = User.all
    end
  end
end
