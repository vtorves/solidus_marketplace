require 'spec_helper'

describe 'Admin - Orders' do

  it 'Supplier should not be authorized' do
    login_as create(:supplier_user)
    visit spree.admin_orders_path
    page.should have_content('Authorization Failure')
  end

end
