class Word
  @@list = []

  attr_accessor :word, :define
  attr_reader :id

  def initialize(attributes)
    @word = attributes.fetch(:word)
    @define = attributes.fetch(:define)
    @id = @@list.length + 1
  end


  def self.all
    @@list
  end

  def save()
    @@list.push(self)
  end

  def self.clear()
    @@list=[]
  end

  def self.find(id)
    contact_id = id.to_i()
    @@list.each do |contact|
      if contact.id == contact_id
        return contact
      end
    end
  end
end
