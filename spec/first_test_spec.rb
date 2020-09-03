require "spec_helper"
require "first_file"

describe "band_pass_filter" do
  it "will test that min filer works" do
    expect(band_pass_filter([1],2,4)).to eq([2])
  end

  it "will bring numbers above max to max number" do
    expect(band_pass_filter([5],3,4)).to eq([4])
  end

  it "will if num inside limits num is returned as is" do
    expect(band_pass_filter([5],4,6)).to eq([5])
  end


  it "test that if no limits that min default is used" do
    expect(band_pass_filter([20])).to eq([40])
  end

  it 'test that if no limits give and number above max' do
    expect(band_pass_filter([1020])).to eq([1000])
  end

  it "check inside deafult when no limits given" do
    expect(band_pass_filter([500])).to eq([500])
  end

  it "test for multiple items in filter" do
    expect(band_pass_filter([20,30])).to eq([40,40])
  end

  it "test that two item above max with no argument return max" do
    expect(band_pass_filter([1010,1040])).to eq([1000,1000])
  end

  it "test that one item below and one item above are brought in min max" do
    expect(band_pass_filter([20,1010])).to eq([40,1000])
  end

  it "will test a long array of numbers" do
    expect(band_pass_filter([2,30,50,800,1010])).to eq([40,40,50,800,1000])
  end

end