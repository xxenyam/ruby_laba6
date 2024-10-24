require_relative "my_gem/version"

module MyGem
  class Error < StandardError; end
  
  class FindDuplicates
    def self.find(array)
      array.select { |e| array.count(e) > 1 }.uniq
    end
  end
  
  
end
