require 'rails_helper'

=begin

  RSpec.describe Idea, type: :model do

    it { should validate_presence_of :title }
    it { should validate_presence_of :body }

    context "Attempting to save an idea with nil title" do
      it "throws error ActiveRecord::RecordInvalid - Validation failed: Title can't be blank" do
	expect { create :idea, title: nil }.to \
	  raise_error(ActiveRecord::RecordInvalid, /Validation failed: Title can't be blank/)
      end
    end
    
    context "Attempting to save an idea with nil body" do
      it "throws error ActiveRecord::RecordInvalid - Validation failed: Body can't be blank" do
	expect { create :idea, body: nil }.to \
	  raise_error(ActiveRecord::RecordInvalid, /Validation failed: Body can't be blank/)
      end
    end
  end

=end
