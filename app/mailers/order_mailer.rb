class OrderMailer < ApplicationMailer
  default from: 'no-reply@jungle.com'

  def order_receipt(order)
    # byebug
    @order = order
    mail(to: @order.email, subject: "Receipt for Order ##{order.id}")

  end
end
