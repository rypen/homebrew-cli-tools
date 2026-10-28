class OmarchyUtmBattery < Formula
  desc "Publish MacBook battery state for an Omarchy UTM guest"
  homepage "https://github.com/rypen/omarchy-utm-battery"

  on_arm do
    url "https://github.com/rypen/omarchy-utm-battery/releases/download/v0.1.0/omarchy-utm-battery-darwin-arm64.tar.gz"
    sha256 "811fee85733e30471afb912f2869e7b35cec1b9e685fbe2162d7648b1e1ad6d0"
  end

  on_intel do
    url "https://github.com/rypen/omarchy-utm-battery/releases/download/v0.1.0/omarchy-utm-battery-darwin-x86_64.tar.gz"
    sha256 "5a883698053b2e66ee2a4369f7c7ee4e15399f973275c6f5436c5a6f3f3e85df"
  end

  depends_on :macos

  service do
    run [opt_bin/"omarchy-utm-battery", "run"]
    keep_alive true
    log_path var/"log/omarchy-utm-battery.log"
    error_log_path var/"log/omarchy-utm-battery.log"
  end

  def install
    bin.install "omarchy-utm-battery"
  end

  test do
    system "#{bin}/omarchy-utm-battery", "version"
  end
end
