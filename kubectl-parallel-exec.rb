class KubectlParallelExec < Formula
  desc "Execute commands on Kubernetes pods in parallel"
  homepage "https://github.com/cin/kubectl-parallel-exec"
  version "0.0.16"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/cin/kubectl-parallel-exec/releases/download/#{version}/kubectl-parallel-exec-darwin-arm64.tgz"
      sha256 "ec0f4b00ac7a5f9cb525c2adb34c6fa2cdef0caf767234c9b811b1e672c47f8e"
    else
      url "https://github.com/cin/kubectl-parallel-exec/releases/download/#{version}/kubectl-parallel-exec-darwin-amd64.tgz"
      sha256 "90d38421dc1a916ff579285163112f18687a078be50297cf85bc97c4ce143b6e"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/cin/kubectl-parallel-exec/releases/download/#{version}/kubectl-parallel-exec-linux-arm64.tgz"
      sha256 "c63dcc2bfedd364fe8f652d8b7d7917b81522a585896c596c8745479ce20d6a6"
    else
      url "https://github.com/cin/kubectl-parallel-exec/releases/download/#{version}/kubectl-parallel-exec-linux-amd64.tgz"
      sha256 "3de52d7d8caf4cc059f5fad23dff72dd5adbd6c3c13234e20071d1f4d3cae4fa"
    end
  end

  def install
    bin.install Dir["kubectl-parallel-exec-*"].first => "kubectl-parallel-exec"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kubectl-parallel-exec -v")
  end
end
