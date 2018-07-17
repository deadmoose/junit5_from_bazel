java_library(
    name = "junit_jupiter_api",
    exports = [
        "//external:jar/org/junit/jupiter/junit_jupiter_api"
    ],
    licenses = [
        "notice"
    ],
    runtime_deps = [
        "//third_party/java/org/apiguardian:apiguardian_api",
        "//third_party/java/org/junit/platform:junit_platform_commons",
        "//third_party/java/org/opentest4j:opentest4j"
    ],
    tags = [
        "maven_coordinates=org.junit.jupiter:junit-jupiter-api:5.0.3"
    ],
    visibility = [
        "//visibility:public"
    ]
)



java_library(
    name = "junit_jupiter_engine",
    exports = [
        "//external:jar/org/junit/jupiter/junit_jupiter_engine"
    ],
    licenses = [
        "notice"
    ],
    runtime_deps = [
        "//third_party/java/org/apiguardian:apiguardian_api",
        "//third_party/java/org/junit/platform:junit_platform_engine",
        ":junit_jupiter_api"
    ],
    tags = [
        "maven_coordinates=org.junit.jupiter:junit-jupiter-engine:5.0.3"
    ],
    visibility = [
        "//visibility:public"
    ]
)



java_library(
    name = "junit_jupiter_params",
    exports = [
        "//external:jar/org/junit/jupiter/junit_jupiter_params"
    ],
    licenses = [
        "notice"
    ],
    runtime_deps = [
        "//third_party/java/org/apiguardian:apiguardian_api",
        ":junit_jupiter_api"
    ],
    tags = [
        "maven_coordinates=org.junit.jupiter:junit-jupiter-params:5.0.3"
    ],
    visibility = [
        "//visibility:public"
    ]
)


