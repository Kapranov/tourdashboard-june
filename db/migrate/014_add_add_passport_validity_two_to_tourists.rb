class AddAddPassportValidityTwoToTourists < ActiveRecord::Migration
  def change
    add_column :tourists, :add_passport_validity_two, :date
  end
end
