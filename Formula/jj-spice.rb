class JjSpice < Formula
  desc "Stacked change requests for Jujutsu VCS"
  homepage "https://github.com/alejoborbo/jj-spice"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alejoborbo/jj-spice/releases/download/v#{version}/jj-spice_#{version}_darwin_arm64.tar.gz"
      sha256 "bccb33e9f84975416e0ed6de5c77cb7ea8099f66e273c1c3bfa1ddbb14689102"
    else
      url "https://github.com/alejoborbo/jj-spice/releases/download/v#{version}/jj-spice_#{version}_darwin_amd64.tar.gz"
      sha256 "2d3a93fe8e4509d3b1db4540fe9ab8461e347cbcaea6fec9d9e8b24dcd1f3bbe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alejoborbo/jj-spice/releases/download/v#{version}/jj-spice_#{version}_linux_arm64.tar.gz"
      sha256 "d667efbdc862413c3d6ae4b554b5ffad6ee29d256c59831694182000ff6f434c"
    else
      url "https://github.com/alejoborbo/jj-spice/releases/download/v#{version}/jj-spice_#{version}_linux_amd64.tar.gz"
      sha256 "5c08d35d4aaba49d76c663fe1255026f9c96608a74585635bf5f315042585c22"
    end
  end

  def install
    bin.install "jj-spice"
  end

  test do
    system bin/"jj-spice", "--version"
  end
end
