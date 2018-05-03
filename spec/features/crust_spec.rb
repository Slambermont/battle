feature 'pit successful' do
  scenario 'clicks pit button and redirects to crust page' do
    sign_in_and_play
    click_on(class: 'BREAD PITT')
    expect(page).to have_content 'Another one bites the crust!'
  end
end

feature 'go back to play page' do
  scenario 'Returns to play page after clicking button' do
    sign_in_and_play
    click_on(class: 'BREAD PITT')
    click_button 'Keep playing!'
    expect(page).to have_content 'Slip on your loafers and get fighting!'
  end
end
