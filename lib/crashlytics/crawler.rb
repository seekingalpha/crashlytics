require 'watir'

module Crashlytics 

  class InvalidCredentials < StandardError
  end

  Crawler = Struct.new(:email, :password) do

    LOGIN_URL = "https://www.crashlytics.com/login"

    def statistics_page
      login
      browser.goto 'https://www.crashlytics.com/seeking-alpha/ios/apps/com.seekingalpha.ipadportfolio/issues?build=all&status=open&event_type=all&time=last-twenty-four-hours'
      browser.html
    end

    private

    def login
      browser.goto LOGIN_URL
      browser.text_field(id: 'form-email').set email
      browser.text_field(id: 'form-password').set password
      browser.button(id: 'sign_in_email').click
    end

    def browser
      @browser ||= Watir::Browser.new :chrome
    end
  end
end
