class CsvLocalizer < Formula
  desc "Convert CSV file to iOS and Android localizable strings"
  homepage "https://github.com/rogermolas/csv-localizer"
  url "https://github.com/rogermolas/csv-localizer/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "b51b13ea70088cae3b20eb3d13c80d6b9af09cf46d6733950b364c4b5657de0d"

  depends_on "python@3"

  def install
    bin.install "csv-localizer"
  end

  test do
    system "#{bin}/csv-localizer", "-h"
  end
end
