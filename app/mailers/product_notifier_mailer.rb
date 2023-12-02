class ProductNotifierMailer < ApplicationMailer
	default from: 'info@yourrubyapp.com'

  def status_change_notification(user, product, new_status)
    @user = user
    @product = product
    @new_status = new_status

    mail(to: @user.email, subject: 'Product Status Change Notification')
  end

  def new_product_notification(user, product_id)
    @product = Product.find(product_id)
    @user = user

    mail(to: @user.email, subject: 'New Product Launch Notification')
  end
end
