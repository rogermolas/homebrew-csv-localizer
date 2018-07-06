class CsvLocalizer < Formula
  desc "Convert CSV file to iOS and Android localizable strings"
  homepage "https://github.com/rogermolas/csv-localizer"
  url "https://github.com/rogermolas/csv-localizer/archive/v1.2.0.tar.gz"
  sha256 "4e59c40f3404cc5aa5e874342b72a08ac9c2ae1270beb4430318f59ad9b929e1"
  def install
    bin.install "csv-localizer"
  end

  test do
    system "#{bin}/csv-localizer", "-h"
  end
end
