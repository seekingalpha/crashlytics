require_relative 'spec_helper'

include Crashlytics 

describe Parser do
  let(:html) { File.read(Dir.pwd + "/spec/fixtures/issues.html") }

  subject(:parser) do
    Parser.new(html)
  end

  let(:expected_statistics) do
    {
      issues: 27,
      crashes: 222,
      users_affected: 187
    }
  end

  describe "#statistics" do
    it "should return statistics" do
      expect(parser.statistics).to eq(expected_statistics) 
    end
  end
end
