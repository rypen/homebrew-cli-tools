class GitBranchDay < Formula
  desc "Git extension to spread commits over a full day"
  homepage "https://github.com/rypen/git-branch-day"
  url "https://github.com/rypen/git-branch-day/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "a8a4985bfc5098f8ab25b050f0637aa7771b20a61cc06c7fab2e8f0032cf7657"
  head "https://github.com/rypen/git-branch-day.git"

  depends_on "go" => :build
  depends_on "git"

  def install
    system "go", "build", *std_go_args(output: bin/"git-branch-day")
  end

  test do
    system "#{bin}/git-branch-day", "version"
  end
end
