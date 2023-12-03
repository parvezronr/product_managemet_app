class Product < ApplicationRecord
	after_update :send_status_change_notification, if: :saved_change_to_active?
	after_save :schedule_product_launch_emails, if: :saved_change_to_launch_date?

	module Status
		ACTIVE = 'Active'.freeze
		IN_ACTIVE = 'Inactive'.freeze
	end

	def status
		active ? Status::ACTIVE : Status::IN_ACTIVE
	end

  private

  def send_status_change_notification
		User.normal_users.each do |user|
			ProductNotifierMailer.delay.status_change_notification(user, self)
    end
  end

  def schedule_product_launch_emails
    Product.where('launch_date > ?', DateTime.now).each do |product|
			User.normal_users.each do |user|
	      launch_time_in_user_timezone = product.launch_date.in_time_zone(user.timezone)
				ProductNotifierMailer.delay(run_at: launch_time_in_user_timezone).new_product_notification(user, product)
	    end
    end
  end
end