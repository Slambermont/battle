feature 'showing pitta points' do
  scenario 'displaying string' do
    sign_in_and_play
    expect(page).to have_content 'Salpal: Pit(ta) Points'
  end
end

feature 'reducing HP by 10' do
  scenario 'HP points are reduced by 10 after an attack' do
    sign_in_and_play
    click_on 'BREAD PITT'
    expect(page.find('.hp_reduction')).to have_content '90'

  end
end
