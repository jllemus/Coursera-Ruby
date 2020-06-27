
class LineAnalyzer
    attr_accessor :highest_wf_count, :highest_wf_words, :content, :line_number

    def initialize(line_text, line_number)
        @content = line_text
        @line_number = line_number
        @highest_wf_words = []
        calculate_word_frequency
    end
    def calculate_word_frequency
        frecuency = Hash.new(0)
        content.split.each { |word| frecuency[word.downcase] += 1}
        @highest_wf_count = frecuency.values.max
        frecuency.each { |key, value| @highest_wf_words << key if value == @highest_wf_count }
    end
end

class Solution
    attr_accessor :analyzers, :highest_count_across_lines, :highest_count_words_across_lines

    def initialize
        @analyzers = []
    end

    def analyze_file()
        File.open('test.txt').each do |line|
           @analyzers<<LineAnalyzer.new(line.chomp, $.)
        end

    end

    def calculate_line_with_highest_frequency
        @highest_count_across_lines = @analyzers.map { |item| item.highest_wf_count }.max
        @highest_count_words_across_lines = []
        @analyzers.each {|item|  @highest_count_words_across_lines << item if item.highest_wf_count == @highest_count_across_lines}
    end

    def print_highest_word_frequency_across_lines()
        puts "The following words have the highest word frequency per line:"
        @highest_count_words_across_lines.each {|object| puts "#{object.highest_wf_words} appears in line #{object.line_number}"}
    end
end