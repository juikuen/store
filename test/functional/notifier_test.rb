require 'test_helper'

class NotifierTest < ActionMailer::TestCase
  test "order_received" do
	mail = Notifier.order_received(orders(:one))
    assert_equal "Complete Store", mail.subject
    assert_equal ["mario@example.org"], mail.to
    assert_equal ["store@example.com"], mail.from
    assert_match /1 x Programming Ruby 1.9/, mail.body.encoded
  end

  test "order_shipped" do
    mail = Notifier.order_shipped
    assert_equal "Order shipped", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
