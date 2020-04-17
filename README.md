# rules_binaries

Some rules for you to deal with external binary dependencies in your Bazel project.

## Setup

**WORKSPACE**

```python
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "suse_rules_binaries",
    sha256 = "26212909741ffd6cb5b4f48cc35f8eec21497582b64b2ea51fe88c0048a1ec53",
    strip_prefix = "rules_binaries-0.1.0",
    urls = ["https://github.com/SUSE/rules_binaries/archive/v0.1.0.tar.gz"],
)

load("@suse_rules_binaries//:def.bzl", "binary")

# An example to fetch Helm!
binary(
    name = "helm",
    config = {
        "sha256": {
            "darwin":  "5e27bc6ecf838ed28a6a480ee14e6bec137b467a56f427dbc3cf995f9bdcf85c",
            "linux":   "fc75d62bafec2c3addc87b715ce2512820375ab812e6647dc724123b616586d6",
            "windows": "c52065cb70ad9d88b195638e1591db64852f4ad150448e06fca907d47a07fe4c",
        },
        "url": {
            "darwin":  "https://get.helm.sh/helm-v{version}-darwin-amd64.tar.gz",
            "linux":   "https://get.helm.sh/helm-v{version}-linux-amd64.tar.gz",
            "windows": "https://get.helm.sh/helm-v{version}-windows-amd64.zip",
        },
        "version": "3.0.3",
        "strip_prefix": {
            "darwin":  "darwin-amd64",
            "linux":   "linux-amd64",
            "windows": "windows-amd64",
        },
    },
)
```
