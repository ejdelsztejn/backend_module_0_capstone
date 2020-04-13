ALPHABET = ('A'..'Z').to_a

class CeasarCipher
  attr_reader :string, :shift

  def is_empty?(string, shift)
    string == ''
  end

  def is_shift_0?(string, shift)
    shift == 0
  end

  def encode(string, shift)
    return string if is_empty?(string, shift) || is_shift_0?(string, shift)
    shifted_string = ''
    string.upcase!.chars.each do |char|
      if ALPHABET.include?(char)
        value = (ALPHABET.index(char) - (shift))
        shifted_string << ALPHABET[value]
      else
        shifted_string << char
      end
    end
    shifted_string
  end
end

cipher = CeasarCipher.new
p cipher.encode("Hello World", 5)
p cipher.encode("Say whaaaat???", 10) # => "IQO MXQQQQJ???"
p cipher.encode("h*e*y t*h*e*r*e", 1) # => "G*D*X S*G*D*Q*D"
p cipher.encode("BOO", 0)             # => "BOO"
p cipher.encode("", 7)                # => ""
