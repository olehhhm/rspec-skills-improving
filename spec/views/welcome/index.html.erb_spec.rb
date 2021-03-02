require 'rails_helper'

RSpec.describe "welcome/index.html.erb", type: :view do
  it 'displays correctly' do
    render

    expect(rendered).to have_content("You're on Rails!")
  end
end
