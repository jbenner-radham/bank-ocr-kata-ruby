require "bank/ocr/kata/version"

module Bank
  module Ocr
    module Kata
      def self.translate(char)
        return 1 if char == [[' ', ' ', ' '], [' ', ' ', '|'], [' ', ' ', '|']]

        return 2 if char == [[' ', '_', ' '], [' ', '_', '|'], ['|', '_', ' ']]

        return 3 if char == [[' ', '_', ' '], [' ', '_', '|'], [' ', '_', '|']]
      end

      def self.get_checksum(entry)
        d1    = entry[8]
        d2    = entry[7]
        d3    = entry[6]
        d4    = entry[5]
        d5    = entry[4]
        d6    = entry[3]
        d7    = entry[2]
        d8    = entry[1]
        d9    = entry[0]

        (d1 + 2 * d2 + 3 * d3 + 4 * d4 + 5 * d5 + 6 * d6 + 7 * d7 + 8 * d8 + 9 * d9) % 11 == 0
      end
    end
  end
end
