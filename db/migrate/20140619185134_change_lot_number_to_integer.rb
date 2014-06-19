class ChangeLotNumberToInteger < ActiveRecord::Migration
  def change
    # http://makandracards.com/makandra/18691-postgresql-vs-rails-migration-how-to-change-columns-from-string-to-integer
    change_column :lots, :number, 'integer USING CAST(number AS integer)'
  end
end
