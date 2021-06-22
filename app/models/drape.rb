class Drape < ApplicationRecord
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      # IDが見つかれば、レコードを呼び出し、見つかれなければ、新しく作成
      drape = find_by(code: row["code"]) || new
      # CSVからデータを取得し、設定する
      drape.attributes = row.to_hash.slice(*updatable_attributes)
      # 保存する
      drape.save
    end
  end

  # 更新を許可するカラムを定義
  def self.updatable_attributes
    ["id", "code", "functions", "price", "brand", "taste"]
  end
end
