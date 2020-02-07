require './lib/glad_valakas.rb'

describe PhotoParser do
  before(:each) do
    @parser = PhotoParser.new
  end

  it "can be initialized" do
    expect(@parser.photo_urls).not_to be_nil
  end

  it "returns URLs of photos" do
    expect(@parser.get_photos_urls).not_to be_nil
    expect(@parser.get_photos_urls.size).to be > 0
  end
end

describe Valakas do
  it "returns URLs of photos" do
    expect(Valakas.photo_urls).not_to be_nil
    expect(Valakas.photo_urls.size).to be > 0
  end
end
