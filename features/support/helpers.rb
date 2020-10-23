require "httparty"

module Helpers
  def remove_email(email)
    HTTParty.get("http://parodify.qaninja.com.br/helpers?email=#{email}")
  end
end
