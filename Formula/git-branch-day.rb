class GitBranchDay < Formula
  desc "Git extension to spread commits over a full day"
  homepage "https://github.com/rypen/git-branch-day"
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
