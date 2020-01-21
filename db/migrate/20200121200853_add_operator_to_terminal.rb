class AddOperatorToTerminal < ActiveRecord::Migration[5.2]
  def change
    add_reference :terminals, :operator, foreign_key: true
  end
end
