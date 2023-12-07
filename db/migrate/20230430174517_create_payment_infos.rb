class CreatePaymentInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :payment_infos do |t|
      t.string :credit_card_number
      t.string :name_on_card
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
