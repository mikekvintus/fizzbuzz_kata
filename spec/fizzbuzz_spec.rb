class Fizzbuzz
	def self.get_val(num=1)
		return fizzme(num) << buzzme(num) if fizzable?(num) || buzzable?(num)
		num
	end
	
	def self.fizzable?(num=1)
		num.to_i % 3 == 0 || num.to_s.include?('3')
	end
	def self.buzzable?(num=1)
		num.to_i % 5 == 0 || num.to_s.include?('5')
	end
	def self.fizzme(num=1)
		return 'fizz' if fizzable?(num)
		""
	end
	def self.buzzme(num=1)
		return 'buzz' if buzzable?(num)
		""
	end
end


describe "FizzBuzz" do
  it "counts from 1 to 100 and assesses fizzyness and buzzyness" do
#	  (1..100).each do |i|
#		  puts Fizzbuzz.get_val(i)
#	  end
  end

  it "returns 1 on the first count" do
    Fizzbuzz.get_val(1).should == 1
  end
  it "returns 2 on the second count" do
    Fizzbuzz.get_val(2).should == 2
  end
  it "returns 'fizz' on the third count" do
    Fizzbuzz.get_val(3).should == 'fizz'
  end
  it "returns 'buzz' on the fifth count" do
    Fizzbuzz.get_val(5).should == 'buzz'
  end
  it "returns 'fizz' on the sixth count" do
    Fizzbuzz.get_val(6).should == 'fizz'
  end
  it "returns 'buzz' on the tenth count" do
    Fizzbuzz.get_val(10).should == 'buzz'
  end
  it "returns 'fizz' on the thirteenth count" do
    Fizzbuzz.get_val(13).should == 'fizz'
  end
  it "returns 'fizzbuzz' on the fifteenth" do 
    Fizzbuzz.get_val(15).should == 'fizzbuzz'
  end
  it "returns 'fizzbuzz' on the fifty first" do 
    Fizzbuzz.get_val(51).should == 'fizzbuzz'
  end
  it "returns 'buzz' on the fifty second" do 
    Fizzbuzz.get_val(52).should == 'buzz'
  end
end

