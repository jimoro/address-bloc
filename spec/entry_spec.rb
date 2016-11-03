require_relative '../models/entry'
# Standard first line of an RSpec test file, saying that it's a spec file that tests 'Entry'.

RSpec.describe Entry do
  # Use 'describe' to give the test structure. In this case, using it to say we're testing 'Entry' attributes

  describe "attributes" do
    # Separate individual tests using the 'it' method. Each 'it' represents a unique test, while let(:entry) applies to them all.
    let(:entry) { Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com') }

    it "responds to name" do
      # Each RSpec test ends with one or more 'expect' method entries, used to declare expectations which, if met, indicate that the test passes.
      expect(entry).to respond_to(:name)
    end

    it "reports its name" do
      expect(entry.name).to eq('Ada Lovelace')
    end

    it "responds to phone number" do
      expect(entry).to respond_to(:phone_number)
    end

    it "reports its phone_number" do
       expect(entry.phone_number).to eq('010.012.1815')
     end

    it "responds to email" do
      expect(entry).to respond_to(:email)
    end

    it "reports its email" do
      expect(entry.email).to eq('augusta.king@lovelace.com')
    end
  end

  describe "#to_s" do
    it "prints an entry as a string" do
     entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
     expected_string = "Name: Ada Lovelace\nPhone Number: 010.012.1815\nEmail: augusta.king@lovelace.com"
    # #6
     expect(entry.to_s).to eq(expected_string)
    end
  end

end
