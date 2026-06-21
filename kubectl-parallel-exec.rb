class KubectlParallelExec < Formula
  desc "Execute commands on Kubernetes pods in parallel"
  homepage "https://github.com/cin/kubectl-parallel-exec"
  version "0.0.16"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/cin/kubectl-parallel-exec/releases/download/#{version}/kubectl-parallel-exec-darwin-arm64.tgz"
      sha256 "e57e754d8af2e5f49447842ea9cbeec2d2a06484d7528e2098161da7b70562f2"
    else
      url "https://github.com/cin/kubectl-parallel-exec/releases/download/#{version}/kubectl-parallel-exec-darwin-amd64.tgz"
      sha256 "753ebfa80f4b1a5561fce9f98e154ad2a6b147a55ad1df8fea6b2d0110cd4320"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/cin/kubectl-parallel-exec/releases/download/#{version}/kubectl-parallel-exec-linux-arm64.tgz"
      sha256 "8b23be9a928ffe7f7c577b23e15164a36300af7bf60d74966eaa64ede7f4c288"
    else
      url "https://github.com/cin/kubectl-parallel-exec/releases/download/#{version}/kubectl-parallel-exec-linux-amd64.tgz"
      sha256 "3054e890b275cfbfd0f101f3b6bba4b61ee7806646f0c58a9f65edfe7598e6db"
    end
  end

  def install
    bin.install Dir["kubectl-parallel-exec-*"].first => "kubectl-parallel-exec"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kubectl-parallel-exec -v")
  end
end
