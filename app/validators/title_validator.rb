class TitleValidator < ActiveModel::Validator
    def validate(record)
        unless !Song.find_by(artist_name: record.artist_name, release_year: record.release_year)
            record.errors[:title] << "No repeat songs: Songs must have a unique title if already released in the same year by the same artist."
        end
    end
end

