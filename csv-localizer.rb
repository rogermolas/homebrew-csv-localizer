class CsvLocalizer < Formula
  desc "Convert CSV file to iOS and Android localizable strings"
  homepage "https://github.com/rogermolas/csv-localizer"
  url "https://github.com/rogermolas/csv-localizer/archive/v1.2.2.tar.gz"
  sha256 "03e89e1b90b5f55b7399be869b88b39e4da3a556ce6dd89e999af188bca790d2"

  depends_on "python@3"

  def install
    bin.install "csv-localizer"
  end

  test do
    system "#{bin}/csv-localizer", "-h"
  end
end
