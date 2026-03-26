class JjSpice < Formula
  desc "Stacked change requests for Jujutsu VCS"
  homepage "https://github.com/alejoborbo/jj-spice"
  version "0.2.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alejoborbo/jj-spice/releases/download/v#{version}/jj-spice_#{version}_darwin_arm64.tar.gz"
      sha256 "d3a24acb7b78cfa1233e636efeb91292a3ef5ad701d451e42266ec674469e41c"
    else
      url "https://github.com/alejoborbo/jj-spice/releases/download/v#{version}/jj-spice_#{version}_darwin_amd64.tar.gz"
      sha256 "ea3eeb31833e4b1b31e3168863ab5058ac8cb652a99ff016b1fd8bce968d3d0d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alejoborbo/jj-spice/releases/download/v#{version}/jj-spice_#{version}_linux_arm64.tar.gz"
      sha256 "110aeb7fefc4567e8d048b3237f574a237911ebfd2a646d9a29a959c296a4641"
    else
      url "https://github.com/alejoborbo/jj-spice/releases/download/v#{version}/jj-spice_#{version}_linux_amd64.tar.gz"
      sha256 "5a6d978a92d33a915632b26481eb38d2d3329922aecf5349a7c9b228a837ff77"
    end
  end

  def install
    bin.install "jj-spice"
  end

  test do
    system bin/"jj-spice", "--version"
  end
end
