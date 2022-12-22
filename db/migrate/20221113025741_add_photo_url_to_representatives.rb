# frozen_string_literal: true

class AddPhotoUrlToRepresentatives < ActiveRecord::Migration[5.2]
  def change
    add_column :representatives, :photoURL, :string
  end
end
