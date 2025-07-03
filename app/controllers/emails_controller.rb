# app/controllers/emails_controller.rb
class EmailsController < ApplicationController
  def index
    @emails = Email.recent
    @unread_count = Email.unread.count
    @total_count = Email.count
  end

  def show
    @selected_email = Email.find(params[:id])

    # Mark as read if it wasn't already
    was_unread = !@selected_email.read?
    @selected_email.read! if was_unread

    respond_to do |format|
      format.turbo_stream do
        streams = []

        # Update the email detail panel
        streams << turbo_stream.update("email_detail",
          partial: "email_detail", locals: { email: @selected_email })

        # Select the current email item (show as read + blue border)
        streams << turbo_stream.replace("email_item_#{@selected_email.id}",
          partial: "email_item_frame", locals: {
            email: @selected_email,
            selected: true
          })

        # Update header counts if email was marked as read
        if was_unread
          streams << turbo_stream.update("email_header_count",
            partial: "email_header_count")
        end

        render turbo_stream: streams
      end

      format.html { render :show }
    end
  end
end
