module EmbeddedModule
  class EmbeddedDoc < EmbeddedDocBase
    field :child_field, type: String, default: 'default'

    def self.default
      new
    end

    def run!
      puts 'Hello'
    end
  end
end
