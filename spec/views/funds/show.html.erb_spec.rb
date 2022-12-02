# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'funds/show' do
  before do
    assign(:fund, Fund.create!(
                    title: 'Title',
                    total: 2
                  ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/2/)
  end
end
