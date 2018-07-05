class CsvLocalizer < Formula
  desc "Convert CSV file to iOS and Android localizable strings"
  homepage ""
  url "https://github.com/rogermolas/csv-localizer/archive/v1.0.0.zip"
  sha256 "6fbbac027036464695375d96627ce740eaf2380eba41e2f81873d340efc0d582"

  def install
    bin.install "csv-localizer.py"
  end

end
