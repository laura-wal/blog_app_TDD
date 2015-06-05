require 'rails_helper'

describe 'adding a Post' do
  
  it 'a user can add a hotel to the site' do
  visit '/'
  click_link 'Add a Post'
  fill_in 'Name', with: 'Annes big day'
  fill_in 'Content', with: 'She went to the zoo on a sexy date and ate a tangerine'
  click_button 'Submit'

  expect(page).to have_content 'Annes big day'

  end

end