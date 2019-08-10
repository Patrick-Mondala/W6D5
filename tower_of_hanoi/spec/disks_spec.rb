require "rspec"
require "disks"

#methods
# initialize - size
# attr_reader :size
# disk1 == disk2

describe Disk do
    subject(:disk1) { Disk.new(5) }
    subject(:disk2) { Disk.new(3) }

    describe "#initialize" do
        it "initializes a disk" do
            expect(disk).to be_an_instance_of(Disk)
        end

        it "accepts a integer for size" do 
            expect(disk.size).to eq(5)
        end
    end

    describe "#>" do
        context "when destination disk is larger than incoming disk" do
            it "returns true" do
                expect(disk1.size > disk2.size).to eq(true)
            end
        end

        context "when destination disk is smaller than incoming disk" do
            it "returns false" do 
                expect(disk1.size > disk2.size).to eq(false)
            end
        end
    end
end