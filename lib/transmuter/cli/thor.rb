require 'thor'
require 'thor/group'

module Transmuter
  class CLI < Thor::Group
    desc "Transmute one file format into another"

    argument :input,
      type: :string,
      required: true,
      aliases: "-i",
      desc: "The input file name."

    def set_input_filename
      @input_filename = input
    end
  end
end