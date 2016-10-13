class UserMailer < ApplicationMailer
	def welcome_email(user)
		@user = user
		mail(to: @user.email, subject: "Willkommen an Bord!", body: "Irgendein Text")
	end
end
