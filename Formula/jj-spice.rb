class JjSpice < Formula
  desc "Stacked change requests for Jujutsu VCS"
  homepage "https://github.com/alejoborbo/jj-spice"
  version "0.2.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alejoborbo/jj-spice/releases/download/v#{version}/jj-spice_#{version}_darwin_arm64.tar.gz"
      sha256 "315f2449a93ee738a3ed59d0d36a60f42e11e2512ff2e384b05e6b21e7ddd548"
    else
      url "https://github.com/alejoborbo/jj-spice/releases/download/v#{version}/jj-spice_#{version}_darwin_amd64.tar.gz"
      sha256 "933dd66aec71fff37c3950de99463a3d74a168956669d9ad8671f129c140e73e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alejoborbo/jj-spice/releases/download/v#{version}/jj-spice_#{version}_linux_arm64.tar.gz"
      sha256 "814f4b4409ce1f0611a5b7bc7f5c14620b0b025d3518762bf67ee61692daf9bc"
    else
      url "https://github.com/alejoborbo/jj-spice/releases/download/v#{version}/jj-spice_#{version}_linux_amd64.tar.gz"
      sha256 "c363855714bab685b82785b351399085b811034aa84baa5570fbfd04496facc8"
    end
  end

  def install
    bin.install "jj-spice"
  end

  test do
    system bin/"jj-spice", "--version"
  end
end
