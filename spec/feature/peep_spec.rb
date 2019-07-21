feature 'peep' do

  scenario 'user can click on add peep button' do
    visit '/'
    click_on 'PEEP'
    expect(page).to have_content 'What\'s happening?'
  end

  scenario 'user can submit a peep' do
    visit '/'
    click_on 'PEEP'
    fill_in "peep", with: "Looking forward to lunch!"
    click_on 'PEEP'
    expect(page).to have_content 'Welcome to Chitter!'
  end

end
