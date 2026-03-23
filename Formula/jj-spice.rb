class JjSpice < Formula
  desc "Stacked change requests for Jujutsu VCS"
  homepage "https://github.com/alejoborbo/jj-spice"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alejoborbo/jj-spice/releases/download/v#{version}/jj-spice_#{version}_darwin_arm64.tar.gz"
      sha256 "b0c932e3e6f746de2b2b26f717650c0acf4ecefc6e8c1290c7e10ec876a48f0f"
    else
      url "https://github.com/alejoborbo/jj-spice/releases/download/v#{version}/jj-spice_#{version}_darwin_amd64.tar.gz"
      sha256 "d505af9723dd86fbfaeb9d2ff0369cfda7da274acb9a3a4c46fe46684eb3e521"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alejoborbo/jj-spice/releases/download/v#{version}/jj-spice_#{version}_linux_arm64.tar.gz"
      sha256 "c4960a03e3f9c2f2bdfb138b68d6ca07442a19c28366ec41ea87c5b58fb5f6c4"
    else
      url "https://github.com/alejoborbo/jj-spice/releases/download/v#{version}/jj-spice_#{version}_linux_amd64.tar.gz"
      sha256 "0d259d7735c076b80bbc79dbcdeb18706ae05fa688c9fa00ff59c5414e355cd3"
    end
  end

  def install
    bin.install "jj-spice"
  end

  test do
    system bin/"jj-spice", "--version"
  end
end
