module EmbeddedModule
  class EmbeddedDocBase
    include Mongoid::Document
    include Mongoid::Timestamps

    field :name, type: String, default: 'default'

    embedded_in :parent_doc

    def run!
      fail ::NotImplementedError
    end
  end
end
