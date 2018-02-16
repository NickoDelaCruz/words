require("sinatra")
require("rspec")
require("pry")
require("words")


describe('Word') do
  before() do
    Word.clear()
   end

   describe('.all') do
     it("is empty at first") do
       expect(Word.all()).to(eq([]))
     end
   end
   describe("#save") do
     it("is empty at first") do
       phrase = Word.new(:word => 'Emily', :define => 'A name')
       phrase.save()
       expect(Word.all()).to(eq([phrase]))
     end
   end
   describe(".clear") do
     it ('clears the array') do
       phrase = Word.new(:word => 'Emily', :define => 'A name')
       phrase.save()
       Word.clear()
       expect(Word.all()).to(eq([]))
     end
   end
   describe("#id") do
     it("increments an id by 1 each time a new item is added") do
       phrase = Word.new(:word => 'Emily', :define => 'A name')
       phrase.save()
       phrase2 = Word.new(:word => 'Emily', :define => 'A name')
       phrase2.save()
       expect(phrase.id()).to(eq(1))
       expect(phrase2.id()).to(eq(2))
     end
   end
   describe(".find") do
     it ("finds an item based on its id") do
       phrase = Word.new(:word => 'Emily', :define => 'A name')
       phrase.save()
       phrase2 = Word.new(:word => 'Emily', :define => 'A name')
       phrase2.save()
       expect(Word.find(1)).to(eq(phrase))
       expect(Word.find(2)).to(eq(phrase2))
     end
   end
 end
