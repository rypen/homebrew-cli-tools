class GitBranchDay < Formula
  desc "Git extension to spread commits over a full day"
  homepage "https://github.com/rypen/git-branch-day"
  url "https://github.com/rypen/git-branch-day/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "6c255437d10e9e87a25eb7c0ecede0c7976b4d3b401f553ea01cdd1534579051"
  head "https://github.com/rypen/git-branch-day.git"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on "go" => :build
  depends_on "git"

  def install
    system "go", "build", *std_go_args(output: bin/"git-branch-day"), "./cmd/git-branch-day"
  end

  test do
    system "#{bin}/git-branch-day", "version"
  end
end
