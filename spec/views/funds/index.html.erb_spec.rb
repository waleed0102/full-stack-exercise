# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'funds/index' do
  before do
    assign(:funds, [
             Fund.create!(
               title: 'Title',
               total: 2
             ),
             Fund.create!(
               title: 'Title',
               total: 2
             )
           ])
  end

  it 'renders a list of funds' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Title'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
  end
end
