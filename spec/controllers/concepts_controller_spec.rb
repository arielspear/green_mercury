require 'spec_helper'

describe ConceptsController do
  describe "save a new concept" do
    it "should catch unique violations" do
      Concept.any_instance.should_receive(:save). \
              and_raise(ActiveRecord::RecordNotUnique.new('ruby'))
      post :create, concept: {
        name: 'ruby',
        description: 'a programming language'
      }
      response.should be_success
      response.should have_content("there is already something called that")
    end

  end
end
