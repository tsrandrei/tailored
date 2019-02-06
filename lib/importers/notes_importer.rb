# frozen_string_literal: true

require 'csv'

module Importers
  class NotesImporter
    class InvalidNoteError < StandardError; end

    def import
      CSV.foreach(ARGV[1].to_s, headers: true) do |line|
        Candidate.update(find_candidate(line), note: line['Note'])
        Note.create!(
          candidate_id: find_candidate(line),
          note: line['Note']
        )
      end
    end

    private

    def find_candidate(line)
      Candidate.where(email: line['Email']).first.id
    end
  end
end
