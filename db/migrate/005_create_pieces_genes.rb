class CreatePiecesGenes < ActiveRecord::Migration[4.2]
  def change
    create_table :pieces_genes do |t|
      t.integer  :piece_id
      t.integer  :gene_id
    end
  end
end
