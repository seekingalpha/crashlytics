require_relative 'spec_helper'

include Crashlytics 

describe Crawler, vcr: true do
  describe "#statistics_page" do
    context 'given valid auth data' do
      subject(:crawler) do
        raise "You should set credentials in your ENV to run this test" unless ENV['CRASHLYTICS_EMAIL']
        Crawler.new ENV['CRASHLYTICS_EMAIL'], ENV['CRASHLYTICS_PASSWORD']
      end

      it 'gets transaction table from online bank' do
        title = (Hpricot(crawler.statistics_page) % 'title').inner_text
        expect(title).to eq("Crashlytics")
      end
    end

  end
end
