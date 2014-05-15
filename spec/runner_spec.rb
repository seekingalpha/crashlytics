require_relative 'spec_helper'

include Crashlytics 

describe Runner do
  let(:html) { File.read(Dir.pwd + "/spec/fixtures/issues.html") }

  subject(:runner) do
    Runner.new 'email', 'pass'
  end

  describe "#run" do
    it 'gets from the crawler' do
      allow_any_instance_of(Crawler).to receive(:statistics_page).and_return(html)
      runner.run
    end
  end

end
