require 'changer'

describe CoinChanger do
  let(:changer) {CoinChanger.new}

  it "makes no change with no money" do
    expect(changer.make_change(0)).to eq []
  end
  it "gives a penny for a penny" do
    expect(changer.make_change(1)).to eq [1]
  end
  it "gives a pennies for a pennies" do
    expect(changer.make_change(2)).to eq [1,1]
  end
  it "gives a nickel for 5 cents" do
    expect(changer.make_change(5)).to eq [5]
  end
  it "gives nickels and pennies" do
    expect(changer.make_change(6)).to eq [5,1]
  end
  it "gives a dime for 10 cents" do
    expect(changer.make_change(10)).to eq [10]
  end
  it "gives a quarter for 25 cents" do
    expect(changer.make_change(25)).to eq [25]
  end
  it "gives quarters, dimes, nickel and pennies" do
    expect(changer.make_change(43)).to eq [25,10,5,1,1,1]
  end
end
