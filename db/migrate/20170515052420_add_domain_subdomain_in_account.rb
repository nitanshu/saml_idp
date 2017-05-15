class AddDomainSubdomainInAccount < ActiveRecord::Migration[5.0]
  def change
    add_column :accounts, :domain, :string
    add_column :accounts, :sub_domain, :string
  end
end
