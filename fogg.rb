# This file was generated by GoReleaser. DO NOT EDIT.
class Fogg < Formula
  desc "Terraform without pain."
  homepage "https://github.com/chanzuckerberg/fogg"
  url "https://github.com/chanzuckerberg/fogg/releases/download/v0.20.0/fogg_0.20.0_darwin_amd64.tar.gz"
  version "0.20.0"
  sha256 "6c0786b427c7e695f8d519ad5145c00f637c4fa28f02cb37405566d0a6a0420d"

  def install
    bin.install "fogg"
  end

  test do
    system "#{bin}/fogg version"
  end
end
