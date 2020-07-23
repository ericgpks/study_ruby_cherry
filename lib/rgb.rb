def to_hex(r, g, b)
  # "#" +
  # r.to_s(16).rjust(2, '0') +
  # g.to_s(16).rjust(2, '0') +
  # b.to_s(16).rjust(2, '0')

  # hex = "#"
  # [r, g, b].each do |n|
  #   hex += n.to_s(16).rjust(2, '0')
  # end
  # hex

  [r, g, b].inject('#') do |hex, n|
    hex + n.to_s(16).rjust(2, '0')
  end
end

def to_ints(hex)
  # r = hex[1..2]
  # g = hex[3..4]
  # b = hex[5..6]
  # r, g, b = hex[1..2], hex[3..4], hex[5..6]
  # r, g, b = hex.scan(/\w\w/)
  # ints = []
  # [r, g, b].each do |n|
  #   ints << n.hex
  # end
  # ints

  # [r, g, b].map(&:hex)

  hex.scan(/\w\w/).map(&:hex)
end