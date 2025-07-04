class EmailsController < ApplicationController
  before_action :set_email, only: [:show, :star]

  def index
    @emails = Email.recent
  end

  def show
    @email.read!
  end

  def star
    @email.toggle!(:starred)
  end

  private

  def set_email
    @email = Email.find(params[:id])
  end
end
