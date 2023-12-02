class Product < ApplicationRecord
	after_update :send_status_change_notification, if: :saved_change_to_active?

  private

  def send_status_change_notification
  	byebug
    users_to_notify = User.where(admin: false)
    users_to_notify.each do |user|
    	byebug
      ProductNotifierMailer.status_change_notification(user, self, active).deliver_now
    end
  end
end
