# namespace :todo do
#   desc "Check to renew subscriptions"
#   task renew_subscriptions: :environment do

#     Subscription.where(subscription_end_date: Date.today).each do |sub|

#       user = sub.user
#       if sub.auto_renew
#       # later
#       customer_id = get_stripe_customer_id(user)

#       Stripe::Charge.create(
#       amount: 1500, # $15.00 this time
#       currency: 'usd',
#       customer: customer_id
#       )
#       end

#       else 
#       user.role = 'standard'
#       user.save
# end
# end
# end