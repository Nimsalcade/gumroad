class AddRequiredProductToOfferCodes < ActiveRecord::Migration[6.1]
  def change
    add_column :offer_codes, :required_product_id, :bigint
    add_column :offer_codes, :required_product_within_days, :integer
    add_column :offer_codes, :required_product_within_percentage, :integer
    add_column :offer_codes, :required_product_after_percentage, :integer

    add_index :offer_codes, :required_product_id
  end
end
