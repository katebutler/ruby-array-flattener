class Flattener

  def self.flatten(input)
    unless input.kind_of?(Array)
      return nil
    end

    output = []

    input.each do |item|
      if item.kind_of?(Array)
        item = self.flatten(item)
        output += item
      else
        output.push(item)
      end
    end

    output
  end

end