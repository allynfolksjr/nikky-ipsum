#!/usr/bin/env ruby

# This is just terrible terrible code.

module Nikky
  extend self
  def generate(seed_start=nil,seed_end=nil)
    #if seed1.nil? && seed2.nil?
    result = `./nikky #{rand(4294967295)}-#{rand(9999)}`
    #elsif seed1 <= 4294967295 && seed2 <= 9999
    #  result = `./nikky #{rand(seed1)}-#{rand(seed2)}`
    #else
    #  raise "Not a valid input!"
    #end
    #result
  end
  def generate_no_index
    array = generate.split(' ')
    array.delete_at(-1)
    array.join(' ')
  end

  def generate_paragraph(s=12)
    paragraph = ""
    8.times do
      paragraph << generate_no_index
      paragraph << " "
    end
    paragraph.rstrip
    paragraph << "\n\n"
  end

  def generate_block(p=5)
    block = ""
    5.times do
        block << generate_paragraph
        i += 1
      end
      block.chomp
    end
  end
