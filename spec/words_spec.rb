require("sinatra")
require("rspec")
require("pry")
require("words")

describe('Word') do
  before() do
    Word.clear()
   end
