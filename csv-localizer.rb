class CsvLocalizer < Formula
  desc "Convert CSV file to iOS and Android localizable strings"
  homepage ""
  url "https://github.com/rogermolas/csv-localizer/archive/v1.0.0.tar.gz"
  sha256 "1d4ceef62fe4f60febdcde2b9690aff50c3fe9ac2e3c9e0cb17f80c01456214a"
  version "1.0.0"
  depends_on :python if MacOS.version <= :snow_leopard

  def install
    ENV.prepend_create_path "PYTHONPATH", libexec/"vendor/lib/python2.7/site-packages"
    %w[tweetpony qrcode requests].each do |r|
      resource(r).stage do
        system "python", *Language::Python.setup_install_args(libexec/"vendor")
      end
    end
    ENV.prepend_create_path "PYTHONPATH", libexec
    bin.install "csv-localizer"

    bin.env_script_all_files(libexec/"bin", :PYTHONPATH => ENV["PYTHONPATH"])
  end
  
  test do
    system "#{bin}/csv-localizer", "-h"
  end
end
