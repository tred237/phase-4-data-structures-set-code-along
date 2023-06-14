require 'byebug'

class MySet < Array
    # attr_accessor :enumerable
    # # byebug
    def initialize(enumerable = [])
        # byebug
        @hash = {}
        enumerable.each do |value|
            @hash[value] = true
        end
    end

    def include?(value)
        @hash.has_key?(value)
    end

    def add(value)
        @hash[value] = true # add a value as a key on the hash
        self # return the updated set
    end

    def delete(value)
        @hash.delete(value)
        self
    end

    def size
        @hash.size
    end
end

# set = MySet[1,2,3]
# byebug
# 0