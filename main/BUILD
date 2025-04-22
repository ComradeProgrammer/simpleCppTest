cc_library(
    name = "hello-greet",
    srcs = ["hello-greet.cc"],
    hdrs = ["hello-greet.h"],
    visibility = ["//:__pkg__"],
)

cc_test(
    name = "hello-test",
    srcs = ["hello-test.cc"],
    deps = [
        "//main:hello-greet",
        "@googletest//:gtest",
        "@googletest//:gtest_main",
    ],
)
