# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Fteam < Formula
  desc "Follow your feature-team with Gitlab"
  homepage "https://med.planet-d.net"
  url "https://github.com/funkymed/homebrew-fteam/blob/master/build/fteam.phar?raw=true"
       https://github.com/funkymed/homebrew-fteam/raw/master/build/fteam.phar
  version "1.14"
  sha256 "4a9510df41eb80b4ab6e49d88447118f631b8b00251e167cfff916308d86fc72"
  license "MIT"

  uses_from_macos "php7"

  # Keg-relocation breaks the formula when it replaces `/usr/local` with a non-default prefix
  on_macos do
    pour_bottle? only_if: :default_prefix if Hardware::CPU.intel?
  end
  # depends_on "cmake" => :build

  def install
    bin.install "fteam.phar" => "fteam"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test fteam`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
