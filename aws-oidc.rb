# This file was generated by GoReleaser. DO NOT EDIT.
class AwsOidc < Formula
  desc "A command line utility tool to help generate AWS STS credentials from an OIDC application."
  homepage "https://github.com/chanzuckerberg/aws-oidc"
  version "0.17.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.17.1/aws-oidc_0.17.1_darwin_amd64.tar.gz"
    sha256 "4420565bdb7d02267af829616d6039cb6e57a49ea0f6775bd4c4f3d5ac8ffd3d"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.17.1/aws-oidc_0.17.1_linux_amd64.tar.gz"
      sha256 "f0563b87c5bf34f9113cb7e113b5a6887e387985468e123360baeffb88cdd6ac"
    end
  end

  def install
    bin.install "aws-oidc"
  end

  test do
    system "#{bin}/aws-oidc version"
  end
end
