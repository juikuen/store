class Notifier < ActionMailer::Base
  default :from => "Mario Musa <mario_r1@abv.bg>"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.order_received.subject
  #
  def order_received(order)
    @order = order
 
    mail :to => order.email, :subject => 'Complete store'
  end
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.order_shipped.subject
  #
  def order_shipped(order)
    @order = order
 
    mail :to => order.email, :subject => 'Complete store'
  end
end
