class Address
  @@own_list = []

  attr_accessor :own

  def initialize(attributes)
    @own = attributes.fetch(:own)
  end

  def self.all()
    @@own_list
  end

  def self.clear()
    @@own_list = []
  end

  def save()
    @@own_list.push(self)
  end

def self.find(id)
  address_id = id.to_i()
  @@own_list.each do |address|
    if address.id == address_id
      return contact
    end
  end
end


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
