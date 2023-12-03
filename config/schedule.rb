set :output, 'log/cron.log'

every 1.day, at: '8:00 am' do
  runner 'Product.schedule_product_launch_emails'
end
