# frozen_string_literal: true

# Module that can be included (mixin) to take and output TSV data
module TsvBuddy
  # take_tsv: converts a String with TSV data into @data
  # parameter: tsv - a String in TSV format
  def take_tsv(tsv)
    @data = []
    lines = tsv.split("\n").map { |str| str.split("\t")}
    keys = lines[0]
    (1...lines.length).map do |index1|
      record = {}
      keys.each_index do |index2|
        record[keys[index2]] = lines[index1][index2]
      end
      @data.push(record)
    end
  end

  # to_tsv: converts @data into tsv string
  # returns: String in TSV format
  def to_tsv
    
  end
end
