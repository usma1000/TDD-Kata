module StringCalculator
  def self.add(string)
    return string = 0 if string.empty?

    if string.include?("//")
      delimiter = string[2]
      string = string[3..-1]
      puts "The string is now #{string}"
      puts delimiter
    end
    puts values = string.split(/[\n#{delimiter},]/)
    values.map(&:to_i).inject(&:+)
  end
  puts "The output is #{StringCalculator.add("//;\n2;5")}"
end
