class CsvLocalizer < Formula
  desc "Convert CSV file to iOS and Android localizable strings"
  homepage ""
  url "https://github.com/rogermolas/csv-localizer/archive/v1.0.1.tar.gz"
  sha256 "6fbbac027036464695375d96627ce740eaf2380eba41e2f81873d340efc0d582"
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
