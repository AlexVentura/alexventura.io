# Set this file at config/initializers/
# For sending via SMTP, provide the string 'apikey' as the SMTP username, and use your API Key as the password.

ActionMailer::Base.delivery_method = :smtp

if Rails.env.production?
	ActionMailer::Base.smtp_settings = {
		:address				=> 'smtp.sendgrid.net',
		:port					=> '587',  # ports 587 and 2525 are also supported with STARTTLS
		:authentication			=> :plain,
		:user_name				=> 'apikey',
		:password				=> ENV['SENDGRID_API_KEY'],
		:domain					=> 'alexventura.io',
		:enable_starttls_auto	=> true
	}
else
	ActionMailer::Base.smtp_settings = {
		:user_name => ENV['MAILTRAP_USERNAME'],
		:password => ENV['MAILTRAP_PASSWORD'],
		:address => 'smtp.mailtrap.io',
		:domain => 'smtp.mailtrap.io',
		:port => '2525',
		:authentication => :cram_md5
	}
end
