class ProductNotifierMailer < ApplicationMailer
	default from: 'info@yourrubyapp.com'

  def status_change_notification(user, product, new_status)
    @user = user
    @product = product
    @new_status = new_status

    mail(to: @user.email, subject: 'Product Status Change Notification')
  end
end
