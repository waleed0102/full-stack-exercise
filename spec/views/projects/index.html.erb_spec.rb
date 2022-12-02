# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'projects/index' do
  let(:fund) do
    Fund.create!(
      title: 'Fund',
      total: 10_000
    )
  end

  before do
    assign(:projects, [
             Project.create!(
               title: 'Project 1',
               fund:
             ),
             Project.create!(
               title: 'Project 2',
               fund:
             )
           ])
  end

  it 'renders a list of projects' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Title'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Fund'.to_s), count: 2
  end
end
