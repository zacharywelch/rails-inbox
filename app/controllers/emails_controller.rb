class EmailsController < ApplicationController
  def index
    @emails = Email.recent
    @unread_count = Email.unread.count
    @total_count = Email.count
    @selected_email = nil
  end

  def show
    @selected_email = Email.find(params[:id])

    # Track if this email was unread before marking as read
    was_unread = !@selected_email.read?
    @selected_email.read!

    # If we marked an unread email as read, send updated counts
    if was_unread
      @count_changed = true
      @unread_count = Email.unread.count
      @total_count = Email.count
    else
      @count_changed = false
    end

    respond_to do |format|
      format.turbo_stream  # Renders show.turbo_stream.erb
      format.html { render partial: "email_detail", locals: { email: @selected_email } }
    end
  end
end
