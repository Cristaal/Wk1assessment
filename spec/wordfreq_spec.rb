require('rspec')
require('wordfreq')

describe('String#wordfreq') do
  it('ignores nonword characters like -') do
    expect("fa-la-la-la-la".wordfreq("la")).to(eq(4))
  end
  it('takes a word and checks to see how many times it occurs in a given string') do
    expect("already did that already".wordfreq("already")).to(eq(2))
  end
  it('assumes that if the word only shows up once, it will return a message in the singualar tense') do
    expect("Is that okay?".wordfreq("okay")).to(eq("This word only appears once."))
  end
end
