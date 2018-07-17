java_library(
    name = "junit_platform_commons",
    exports = [
        "//external:jar/org/junit/platform/junit_platform_commons"
    ],
    licenses = [
        "notice"
    ],
    tags = [
        "maven_coordinates=org.junit.platform:junit-platform-commons:1.0.3"
    ],
    visibility = [
        "//visibility:public"
    ]
)



java_library(
    name = "junit_platform_engine",
    exports = [
        "//external:jar/org/junit/platform/junit_platform_engine"
    ],
    licenses = [
        "notice"
    ],
    runtime_deps = [
        "//third_party/java/org/opentest4j:opentest4j",
        ":junit_platform_commons"
    ],
    tags = [
        "maven_coordinates=org.junit.platform:junit-platform-engine:1.0.3"
    ],
    visibility = [
        "//visibility:public"
    ]
)



java_library(
    name = "junit_platform_launcher",
    exports = [
        "//external:jar/org/junit/platform/junit_platform_launcher"
    ],
    licenses = [
        "notice"
    ],
    runtime_deps = [
        "//third_party/java/org/apiguardian:apiguardian_api",
        ":junit_platform_engine"
    ],
    tags = [
        "maven_coordinates=org.junit.platform:junit-platform-launcher:1.0.3"
    ],
    visibility = [
        "//visibility:public"
    ]
)



java_library(
    name = "junit_platform_runner",
    exports = [
        "//external:jar/org/junit/platform/junit_platform_runner"
    ],
    licenses = [
        "notice"
    ],
    runtime_deps = [
        "//third_party/java/junit:junit",
        "//third_party/java/org/apiguardian:apiguardian_api",
        ":junit_platform_launcher",
        ":junit_platform_suite_api"
    ],
    tags = [
        "maven_coordinates=org.junit.platform:junit-platform-runner:1.0.3"
    ],
    visibility = [
        "//visibility:public"
    ]
)



java_library(
    name = "junit_platform_suite_api",
    exports = [
        "//external:jar/org/junit/platform/junit_platform_suite_api"
    ],
    licenses = [
        "notice"
    ],
    runtime_deps = [
        ":junit_platform_commons"
    ],
    tags = [
        "maven_coordinates=org.junit.platform:junit-platform-suite-api:1.0.3"
    ],
    visibility = [
        "//visibility:public"
    ]
)


