class MyValidator < ActiveModel::Validator
    def validate(record)
      unless record.category != "chinese" || "italian" || "japanese" || "french" || "belgian"
        record.errors.add :category, "Need a valid category!"
      end
    end
  end
