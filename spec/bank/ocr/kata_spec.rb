require 'spec_helper'

describe Bank::Ocr::Kata do
  it 'translates a one' do
    char = [[' ', ' ', ' '], [' ', ' ', '|'], [' ', ' ', '|']]
    expect(Bank::Ocr::Kata.translate(char)).to eq(1)
  end

  it 'translates a two' do
    char = [[' ', '_', ' '], [' ', '_', '|'], ['|', '_', ' ']]
    expect(Bank::Ocr::Kata.translate(char)).to eq(2)
  end

  it 'translates a three' do
    char = [[' ', '_', ' '], [' ', '_', '|'], [' ', '_', '|']]
    expect(Bank::Ocr::Kata.translate(char)).to eq(3)
  end

  it 'verifies a checksum for an all zero entry' do
    # entry = 000000000
    entry = 123456789

    expect(Bank::Ocr::Kata.get_checksum(entry)).to eq(true)
  end
end
