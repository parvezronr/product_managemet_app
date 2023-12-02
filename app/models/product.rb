class Product < ApplicationRecord
	after_update :send_status_change_notification, if: :saved_change_to_active?
	# need to verify eaither one
	after_save :schedule_launch_notification
	after_save :schedule_product_launch_emails

  private

  def send_status_change_notification
    users_to_notify = User.where(admin: false)
    users_to_notify.each do |user|
      ProductNotifierMailer.status_change_notification(user, self, active).deliver_now
    end
  end

  def schedule_launch_notification
    users_to_notify = User.where(admin: false)
    users_to_notify.each do |user|
    	ProductNotifierMailer.delay(run_at: launch_date).new_product_notification(user, self.id) if launch_date.present?
    end
  end

  def self.schedule_product_launch_emails
  	users_to_notify = User.where(admin: false)
    Product.where('launch_date > ?', DateTime.now).each do |product|
    	users_to_notify.each do |user|
	      launch_time_in_user_timezone = product.launch_date.in_time_zone(user.timezone)
	      ProductMailer.delay(run_at: launch_time_in_user_timezone).new_product_notification(user, product.id)
	    end
    end
  end
end