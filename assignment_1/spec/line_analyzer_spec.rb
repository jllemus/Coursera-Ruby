require 'rspec'
require_relative '../module2_assignment'

describe LineAnalyzer do
    subject(:lineAnalyzer) { LineAnalyzer.new("y interdependencia y entre las y sociedades y entre la y humanidad y la biosfera", 2) }

    it "should have an accesor named highest_wf_count" do
      is_expected.to respond_to(:highest_wf_count) 
    end

    it "should have an accesor named highest_wf_words" do
      is_expected.to respond_to(:highest_wf_words) 
    end

    it "should have an accesor named content" do
      is_expected.to respond_to(:content) 
    end

    it "should have a method named calculate_word_frequency" do
      is_expected.to respond_to(:calculate_word_frequency) 
    end

    it "should have a content attribute and line_number" do
        is_expected.to have_attributes(content: "y interdependencia y entre las y sociedades y entre la y humanidad y la biosfera", line_number: 2) 
    end
    it "content attribute should have value -y interdependencia y entre las y sociedades y entre la y humanidad y la biosfera-" do
        expect(lineAnalyzer.content).to eq("y interdependencia y entre las y sociedades y entre la y humanidad y la biosfera")
    end
    it "line_number attribute should have value 2" do
        expect(lineAnalyzer.line_number).to eq(2)
    end

    it "calls calculate_word_frequency when created" do
        expect_any_instance_of(LineAnalyzer).to receive(:calculate_word_frequency)
        LineAnalyzer.new("", 10) 
    end

    it "highest_wf_count value is 6" do
        expect(lineAnalyzer.highest_wf_count).to eq(6)
    end
    it "highest_wf_words will include -y-" do
        expect(lineAnalyzer.highest_wf_words).to include 'y'
    end
    it "content attribute will have value -y interdependencia y entre las y sociedades y entre la y humanidad y la biosfera-" do
        expect(lineAnalyzer.content).to eq("y interdependencia y entre las y sociedades y entre la y humanidad y la biosfera")
    end
    it "line_number attribute will have value 2" do
        expect(lineAnalyzer.line_number).to eq(2)
    end
end