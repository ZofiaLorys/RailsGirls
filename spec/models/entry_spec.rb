require "rails_helper"

RSpec.describe Entry, :type => :model do
  context "with single Entry" do
    it "#blob" do
      content_example = "lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum "
      entry = Entry.create!(contents: content_example)
      expect(entry.blob).to eq(content_example.truncate(20))
    end
  end
end