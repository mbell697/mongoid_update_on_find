require 'test_helper'
 
class ParentDocTest < ActiveSupport::TestCase

  def setup
    5.times do |i|
      p = ParentDoc.new name: "parent_test #{i}"
      p.embedded_doc = EmbeddedModule::EmbeddedDoc.new name: 'test_child', child_field: 'test_child_field'
      p.save!
    end
  end

  test 'saves and retrives embedded doc' do
    doc = ParentDoc.first
    assert_equal 'test_child_field', doc.embedded_doc.child_field
  end
end
