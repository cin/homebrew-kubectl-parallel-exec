# homebrew-kubectl-parallel-exec

Homebrew tap for [`kubectl-parallel-exec`](https://github.com/cin/kubectl-parallel-exec), a Kubernetes plugin for running commands across matching pods in parallel.

## Installation

```sh
brew install cin/kubectl-parallel-exec/kubectl-parallel-exec
```

After installation, run the binary directly:

```sh
kubectl-parallel-exec -v
```

Because the executable follows the `kubectl-*` plugin naming convention, it can also be invoked through `kubectl`:

```sh
kubectl parallel-exec -v
```

## Updating

```sh
brew update
brew upgrade kubectl-parallel-exec
```

## Formula Maintenance

The upstream release workflow publishes Linux and macOS archives for amd64 and arm64, then updates this tap with the matching version and SHA-256 checksums.

To verify the formula locally:

```sh
brew audit --strict --online kubectl-parallel-exec
brew test kubectl-parallel-exec
```
