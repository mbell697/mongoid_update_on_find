require 'test_helper'
 
class ParentDocTest < ActiveSupport::TestCase
  def setup
    3.times do |i|
      ParentDoc.create name: "parent_test #{i}" do |d|
        d.embedded_doc = EmbeddedDoc.new(name: "test_child #{i}", child_field: 'test_child_field')
      end
    end
  end

  test 'retrieves a doc without modifying the embedded doc when only is used' do
    doc = ParentDoc.where(name: 'parent_test 2').only(:name).first
    assert_equal 'test_child_field', doc.embedded_doc.child_field
  end
end
