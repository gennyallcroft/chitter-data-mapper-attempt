feature 'welcome page' do
  scenario 'user visits the welcome page' do
    visit '/'
    expect(page).to have_content 'Welcome to Chitter'
  end
end
