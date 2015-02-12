require_relative "spec_helper"
require_relative "../lesson-05_homework"

describe "Line_tests" do 
	it " Line with 4 parameters" do
		expect(line = Line.new(10,20,30,40)).to eq(<line x1="10" y1="20" x2="30" y2="40" style="stroke-width: 2; stroke: black;" />)
	end
	it " Line with 4+1 parameters (width)" do
		expect(line = Line.new(5,5,35,35,7)).to eq(<line x1="5" y1="5" x2="35" y2="35" style="stroke-width: 7; stroke: black;" />)
	end
end

describe "Rect tests" do 
	it " Rect with 4 parametrs" do
		expect(rect = Rect.new(15,15,30,40)).to eq(<rect x="15" y="15" width="30" height="40" />)
	end
end

describe "Circle tests" do 
	it " Circle with 3 parametrs" do
		expect(circle = Circle.new(100,100,25)).to eq(<circle cx="100" cy="100" r="25" fill="transparent" stroke="black" stroke-width="2"/>)
	end

	it " Circle with 3+1 parametrs (fill)" do
		expect(circle = Circle.new(75,150,50,"black")).to eq(<circle cx="75" cy="150" r="50" fill="black" stroke="black" stroke-width="2"/>)
	end
end