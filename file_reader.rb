class FileReader

  def read_file(filename)
    File.read(filename).each_line do |line|
      puts line
    end
  end

end