# accept array of elements (arguments)
# [1, 2, 1, 3, 3].uniq # => [1, 2, 3]
# returning new array with unique elements in the order in which they first appeared
require "rspec"
require 'tdd'

describe Array do
    describe "#my_uniq" do
        subject(:array) { [1, 2, 1, 3, 3] }

        it "is called on an array" do
            expect { array.my_uniq }.to_not raise_error
        end

        it "returning new array with only new elements" do
            expect(array.my_uniq).to eq([1,2,3])
        end
    end

    describe "#two_sum" do
        subject(:array) { [-1, 0, 2, -2, 1] }

        it "returns array of pairs sorted ascending, with positions elements sum to zero" do
            expect(array.two_sum).to eq([[0, 4], [2, 3]])
        end
    end

    describe "#my_transpose" do
        subject(:rows) {[
            [0, 1, 2],
            [3, 4, 5],
            [6, 7, 8]
        ]}
        subject(:cols) {[
            [0, 3, 6],
            [1, 4, 7],
            [2, 5, 8]
        ]}
        it "accepts a 2d array" do
            expect(rows[0]).to be_an_instance_of(Array)
        end

        it "changes rows to columns, vice versa" do
            expect(rows.my_transpose).to eq(cols)
            expect(cols.my_transpose).to eq(rows)
        end

        it "does not call transpose" do
            expect(rows.my_transpose).to_not receive(:transpose)
        end
    end
end

describe "#stock_picker" do 

    it "returns empty array if number of days is less than two" do
        expect(stock_picker([1])).to eq([])
    end

    it "returns empty array if profit is less than or equal to zero" do
        expect(stock_picker([20, 5])).to eq([])
    end

    it "returns most profitable pair of days" do
        expect(stock_picker([1, 5, 20])).to eq([0, 2])
        expect(stock_picker([3, 1, 10])).to eq([1, 2])
    end
end