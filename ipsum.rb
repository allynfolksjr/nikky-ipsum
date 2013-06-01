module Nikky
  extend self
  def generate
    result = `./nikky #{rand(4294967295)}-#{rand(9999)}`
  end

  def generate_no_index
    array = generate.split(' ')
    array.delete_at(-1)
    array.join(' ')
  end

  def generate_paragraph(s=8)
    paragraph = ""
    s.times do
      paragraph << generate_no_index
      paragraph << " "
    end
    paragraph.rstrip
  end

  def generate_block(p=5)
    block = ""
    p.times do
      block << generate_paragraph
    end
    block.chomp
  end
end
