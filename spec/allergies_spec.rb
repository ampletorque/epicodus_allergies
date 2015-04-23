require('rspec')
require('allergies')
require('pry')

describe('String#allergies') do

  it('checks allergy score of 1 to return eggs') do
    expect(("1").allergies()).to(eq("eggs"))
  end

  it('checks allergy score of 129 to return cats') do
    expect(("129").allergies()).to(eq("cats, eggs"))
  end

end
