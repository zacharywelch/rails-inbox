class EmailsController < ApplicationController
  def index
    @emails = Email.recent
  end

  def show
    @email = Email.find(params[:id])
    @email.read!
  end
end
