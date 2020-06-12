# This file was generated by GoReleaser. DO NOT EDIT.
class AwsOidc < Formula
  desc "A command line utility tool to help generate AWS STS credentials from an OIDC application."
  homepage "https://github.com/chanzuckerberg/aws-oidc"
  version "0.8.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.8.0/aws-oidc_0.8.0_darwin_amd64.tar.gz"
    sha256 "22b61647cb5b0f82fa99c8766948d01d778d32c67c528bdef517ab0b3e398fd7"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.8.0/aws-oidc_0.8.0_linux_amd64.tar.gz"
      sha256 "6cea47de9e8f16dc6bd16b25cf4051ba5bfe9e10f51fe41debbf3fce82ac8a2c"
    end
  end

  def install
    bin.install "aws-oidc"
  end

  test do
    system "#{bin}/aws-oidc version"
  end
end
