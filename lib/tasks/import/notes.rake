# frozen_string_literal: true

require 'importers/notes_importer.rb'

namespace :import do
  desc 'Import notes from a CSV file'
  task notes: :environment do
    Importers::NotesImporter.new.import
  end
end
