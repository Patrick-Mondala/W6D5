class Array

    def my_uniq
        elements = Hash.new(0)
        self.each { |ele| elements[ele] += 1 }
        elements.keys
    end

    def two_sum
        indices = []

        (0...self.length).each do |idx_1|
            (idx_1 + 1...self.length).each do |idx_2|
                indices << [idx_1, idx_2] if self[idx_1] + self[idx_2] == 0
            end
        end

        indices
    end

    def my_transpose
        transposed = []

        (0...self.length).each do |inner_array|
            new_arr = []
            (0...self.length).each do |outer_array|
                new_arr << self[outer_array][inner_array]
            end
            transposed << new_arr
        end

        transposed
    end
end

def stock_picker(prices)
    return [] if prices.length < 2
    highest_profit = 0
    profit_pair = []

    (0...prices.length).each do |idx_1|
        (idx_1 + 1...prices.length).each do |idx_2|
            profit = prices[idx_2] - prices[idx_1]
            if profit > highest_profit
                profit_pair = [idx_1, idx_2]
                highest_profit = profit
            end
        end
    end
    
    return [] if highest_profit <= 0
    profit_pair
end