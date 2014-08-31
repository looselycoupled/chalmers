class CreateIdentities < ActiveRecord::Migration
  def change

    create_table :identities do |t|
      t.string :uid
      t.string :provider
      t.string :token
      t.string :refresh_token
      t.string :refresh_token_created_at

      t.timestamps null: false
    end

    add_reference :identities, :user, index: true

  end
end
