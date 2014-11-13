require './gilded_rose.rb'
require "rspec"

describe GildedRose do



  it "vest should decrease by 1" do
    subject.update_quality
    expect(subject.items[0].quality).to eq(19)
    expect(subject.items[0].sell_in).to eq(9)
  end

  it "brie should decrease by 1" do
    subject.update_quality
    expect(subject.items[1].quality).to eq(1)
    expect(subject.items[1].sell_in).to eq(1)

  end


  it "elixir should decrease by 1" do
    subject.update_quality
    expect(subject.items[2].quality).to eq(6)
    expect(subject.items[2].sell_in).to eq(4)

  end

  it "sulfuras should decrease by 1" do
    subject.update_quality
    expect(subject.items[3].quality).to eq(80)
    expect(subject.items[3].sell_in).to eq(0)

  end

  it "backstage should decrease by 1" do
    subject.update_quality
    expect(subject.items[4].quality).to eq(21)
    expect(subject.items[4].sell_in).to eq(14)

  end

  it "conjured should decrease by 1" do
    subject.update_quality
    expect(subject.items[5].quality).to eq(4)
    expect(subject.items[5].sell_in).to eq(2)

  end

  it "after many updates" do
  	100.times{ subject.update_quality }
  	expect(subject.items[0].quality).to eq(0)
  	expect(subject.items[2].quality).to eq(0)
  	expect(subject.items[4].quality).to eq(0)
  	expect(subject.items[5].quality).to eq(0)
  end

  it "after 10 updates" do 
  	10.times{ subject.update_quality }
  	expect(subject.items[0].quality).to eq(10)
  	expect(subject.items[1].quality).to eq(18)
  	expect(subject.items[2].quality).to eq(0)
  	expect(subject.items[3].quality).to eq(80)
  	expect(subject.items[4].quality).to eq(35)
  	expect(subject.items[5].quality).to eq(0)
  	expect(subject.items[0].sell_in).to eq(0)
  	expect(subject.items[1].sell_in).to eq(-8)
  	expect(subject.items[2].sell_in).to eq(-5)
  	expect(subject.items[3].sell_in).to eq(0)
  	expect(subject.items[4].sell_in).to eq(5)
  	expect(subject.items[5].sell_in).to eq(-7)

  end

  it "after 20 updates" do 
  	20.times{ subject.update_quality }
  	expect(subject.items[0].quality).to eq(0)
  	expect(subject.items[1].quality).to eq(38)
  	expect(subject.items[2].quality).to eq(0)
  	expect(subject.items[3].quality).to eq(80)
  	expect(subject.items[4].quality).to eq(0)
  	expect(subject.items[5].quality).to eq(0)
  end

end