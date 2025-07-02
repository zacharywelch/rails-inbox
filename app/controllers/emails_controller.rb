class EmailsController < ApplicationController
  def index
    @emails = Email.recent
    @unread_count = Email.unread.count
    @total_count = Email.count
  end

  def show
    @email = Email.find(params[:id])
  end
end
