module Crashlytics 

  Runner = Struct.new :user_name, :password do
    def run
      parser.statistics
    end

    private

    def parser
      Parser.new(crawler.statistics_page)
    end

    def crawler
      Crawler.new user_name, password
    end
  end

end
