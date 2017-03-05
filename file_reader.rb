class FileReader

  # Finding Information - exercise 1
  # def read_file(filename)
  #   File.read(filename).each_line do |line|
  #     if (line.include?('m'))
  #       puts line
  #     end
  #   end
  # end

  # Finding Information - exercise 2
  # def read_file(filename)
  #   File.read(filename).each_line do |line|
  #     person = line.split(',')
  #     age = person[1].strip
  #     puts age
  #   end
  # end

  # Finding Information - exercise 3
  def read_file(filename)
    File.read(filename).each_line do |line|
      person = line.split(',')
      city = person[2].strip
      puts city
    end
  end

  def find_ages(filename)
    ages_file = File.open('ages.txt', 'w')
    File.read(filename).each_line do |line|
      person = line.split(',')
      age = person[1].strip
      ages_file.puts(age)
    end
    ages_file.close
  end

  #Exercise 4 - Writing name and age
  def find_names_ages(filename)
    output_file = File.open('names-ages.txt', 'w')
    File.read(filename).each_line do |line|
      person = line.split(',')
      name = person[0].strip
      age = person[1].strip
      output_file.puts("#{name} #{age}")
    end
    output_file.close
  end
end