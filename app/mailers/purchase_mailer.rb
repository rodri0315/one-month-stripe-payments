class PurchaseMailer < ActionMailer::Base
	layout 'purchase_mailer'
	default from: "One Month Stripe Payments <paymentsjlr@gmail.com>"

	def purchase_receipt purchase
		@purchase = purchase

		mail to: purchase.email, subject: "Thank you for your purchase!"
	end
end