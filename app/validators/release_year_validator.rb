class ReleaseYearValidator < ActiveModel::Validator
    def validate(record)
        if record.released
            unless record.release_year
                record.errors[:release_year] << "Release year can't be empty if released."
            end
            if record.release_year
                unless record.release_year <= Date.current.year
                    record.errors[:release_year] << "Release year can't be in the future."
                end
            end
        end
    end
end