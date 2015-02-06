class ParentDoc
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String

  embeds_one :embedded_doc

  after_initialize :set_default_embedded_doc

  private

  def set_default_embedded_doc
    self.embedded_doc = EmbeddedDoc.default unless embedded_doc?
  end
end
