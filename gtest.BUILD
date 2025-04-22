
cc_library(
    name = "main",
    srcs = glob(["googletest-release-1.11.0/googletest/src/*.cc"]),
    hdrs = glob(["googletest-release-1.11.0/googletest/include/**/*.h"]),
    includes = ["googletest-release-1.11.0/googletest/include"],
    copts = [
        "-Iexternal/gtest/googletest-release-1.10.0/googletest/include",
        "-Iexternal/gtest/googletest-release-1.10.0/googletest"
     ],
    linkopts = ["-pthread"],
    visibility = ["//visibility:public"],
)