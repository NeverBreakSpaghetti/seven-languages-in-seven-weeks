# Modify the CSV application to support an each method to return a CsvRow object.
# Use method_missing on that CsvRow to return the value for the column for a given heading.
#
# For example, for the file:
# one, two
# lions, tigers
#
# allow an API that works like this:
# csv = RubyCsv.new
# csv.each {|row| puts row.one}
# This should print "lions".

module ActsAsCsv
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def acts_as_csv
      include InstanceMethods
    end
  end

  module InstanceMethods
    def read
      @csv_contents = []
      filename = 'day3/' + self.class.to_s.downcase + '.txt'
      file = File.new(filename)
      @headers = file.gets.chomp.split(', ')
      file.each do |row|
        @csv_contents << row.chomp.split(', ')
      end
    end
    attr_accessor :headers, :csv_contents
    def initialize
      read
    end
    def each
      csv_contents.each { |line| yield CsvRow.new(@headers, line) }
    end
  end
end

class RubyCsv # no inheritance! You can mix it in
  include ActsAsCsv
  acts_as_csv
end

class CsvRow
  def initialize( headers = [], fields = [] )
    @fields = {}
    headers.each_with_index do |header, index|
      @fields[header] = fields[index]
    end
  end

  def method_missing name, *args
    @fields[name.to_s] || ''
  end
end

csv = RubyCsv.new
csv.each {|row| p row}
csv.each {|row| p row.one}
csv.each {|row| p row.not_existing}