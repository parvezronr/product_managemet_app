class ProductNotifierMailer < ApplicationMailer
	default from: 'info@yourrubyapp.com'

  def status_change_notification(user, product)
    @user = user
    @product = product

    mail(to: @user.email, subject: 'Product Status Change Notification')
  end

  def new_product_notification(user, product)
    @user = user
    @product = product

    mail(to: @user.email, subject: 'New Product Launch Notification')
  end
end
