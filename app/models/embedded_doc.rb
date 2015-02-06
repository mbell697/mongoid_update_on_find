class EmbeddedDoc
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String, default: 'default'
  field :child_field, type: String, default: 'default'

  embedded_in :parent_doc

  def self.default
    new
  end

  def run!
    puts 'Hello'
  end
end
