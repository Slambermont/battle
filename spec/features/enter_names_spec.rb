feature 'testing name forms' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Habs'
    fill_in :player_2_name, with: 'Salpal'

    click_button 'Enter game'
    expect(page).to have_content 'Alastair Habs vs. Alastair Salpal'
  end
end
