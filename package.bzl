load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@build_bazel_rules_nodejs//:defs.bzl", "yarn_install")

def rules_svelte_dependencies():
  http_archive(
    name = "build_bazel_rules_nodejs",
    sha256 = "c612d6b76eaa17540e8b8c806e02701ed38891460f9ba3303f4424615437887a",
    urls = ["https://github.com/bazelbuild/rules_nodejs/releases/download/0.42.1/rules_nodejs-0.42.1.tar.gz"],
  )
  
  yarn_install(
    name = "build_bazel_rules_svelte_deps",
    package_json = "@build_bazel_rules_svelte//internal:package.json",
    yarn_lock = "@build_bazel_rules_svelte//internal:yarn.lock",
  )



 
