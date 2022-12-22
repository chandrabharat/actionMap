# frozen_string_literal: true

class AddContactAddressToRepresentatives < ActiveRecord::Migration[5.2]
  def change
    add_column :representatives, :contactAddress, :string
  end
end
