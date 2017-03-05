require_relative 'file_reader'

file_reader = FileReader.new
file_reader.read_file('addressbook.txt')
file_reader.find_ages('addressbook.txt')
file_reader.find_names_ages('addressbook.txt')