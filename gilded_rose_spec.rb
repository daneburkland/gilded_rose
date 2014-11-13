require './gilded_rose.rb'
require "rspec"

describe GildedRose do


  describe 'regular item' do 
  	let(:i) { 0 }

  	context 'after one day' do
  		before(:each) do 
  			subject.update_quality
  		end
  		it "quality and sell in should decrease by 1" do
  			expect(subject.items[i].quality).to eq(19)
  			expect(subject.items[i].sell_in).to eq(9)
  		end
    end

    context 'after 100 days' do
      before(:each) do
        100.times {subject.update_quality }
      end
      it "quality should be zero" do
        expect(subject.items[i].quality).to eq(0)
      end
    end
  end

  describe 'aged brie' do
    let(:i) { 1 }

    context 'after one day' do
      before(:each) do
        subject.update_quality
      end
      it "quality should increase by 1" do
        expect(subject.items[i].quality).to eq(1)
      end
    end

    context 'after 100 days' do
      before(:each) do
        100.times {subject.update_quality }
      end
      it "quality should be 50" do
        expect(subject.items[i].quality).to eq(50)
      end
    end
  end

  describe 'legendary item' do
    let(:i) { 3 }
    
    context 'after one day' do
      before(:each) do
        subject.update_quality
      end
      it "quality should be the same" do
        subject.update_quality
        expect(subject.items[i].quality).to eq(80)
      end
    end

    context 'after 100 days' do
      before(:each) do
        100.times { subject.update_quality }
      end
      it "quality should be the same" do
        expect(subject.items[i].quality).to eq(80)
      end
    end
  end

  describe 'backstage ticket' do
    let(:i) { 4 }
    
    context 'after one day' do
      before(:each) do
        subject.update_quality
      end
      it "quality should increase by one" do
        expect(subject.items[i].quality).to eq(21)
      end
    end

    context 'after six days' do
      before(:each) do
        6.times{ subject.update_quality }
      end
      it "quality should begin increasing by two" do
        expect(subject.items[i].quality).to eq(27)
      end
    end

    context 'after eleven days' do
      before(:each) do
        11.times{ subject.update_quality }
      end
      it "quality should begin increasing by three" do
        expect(subject.items[i].quality).to eq(38)
      end
    end

    context 'after 100 days' do
      before(:each) do
        100.times { subject.update_quality }
      end
      it "quality should be zero" do
        expect(subject.items[i].quality).to eq(0)
      end
    end
  end

  describe 'conjured' do
    let(:i) { 5 }
    
    context 'after one day' do
      before(:each) do
        subject.update_quality
      end
      it "quality should decrease by two" do
        expect(subject.items[i].quality).to eq(4)
      end
    end

    context 'after 100 days' do
      before(:each) do
        100.times { subject.update_quality }
      end
      it "quality should be zero" do
        expect(subject.items[i].quality).to eq(0)
      end
    end
  end

end



				

