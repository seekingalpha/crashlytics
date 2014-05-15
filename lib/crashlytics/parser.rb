require 'hpricot'

module Crashlytics 

  Parser = Struct.new :html do
    def statistics 
      {
        issues: doc.search('.summary-issues .value').text.to_i,
        crashes: doc.search('.crashes-events .value').text.to_i,
        users_affected: doc.search('.crashes-users-affected .value').text.to_i
      } 
    end

    private

    def doc
      @doc ||= Hpricot(html)
    end
  end

end
