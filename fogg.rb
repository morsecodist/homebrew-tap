# This file was generated by GoReleaser. DO NOT EDIT.
class Fogg < Formula
  desc "Terraform without pain."
  homepage "https://github.com/chanzuckerberg/fogg"
  version "0.36.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/chanzuckerberg/fogg/releases/download/v0.36.2/fogg_0.36.2_darwin_amd64.tar.gz"
    sha256 "e2b175c2e5f28016f31ccbec14358b7afdc36da02d1b6e27470fe88d39cbb878"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.36.2/fogg_0.36.2_linux_amd64.tar.gz"
      sha256 "9573edaf7d95d21b977def3b83c8cbb674a147582e2027ade5ba3c095749821e"
    end
  end

  def install
    bin.install "fogg"
  end

  test do
    system "#{bin}/fogg version"
  end
end
