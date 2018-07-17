# Do not edit. bazel-deps autogenerates this file from dependencies.yaml.

def declare_maven(hash):
    native.maven_jar(
        name = hash["name"],
        artifact = hash["artifact"],
        sha1 = hash["sha1"],
        repository = hash["repository"]
    )
    native.bind(
        name = hash["bind"],
        actual = hash["actual"]
    )

def list_dependencies():
    return [
    {"artifact": "junit:junit:4.12", "lang": "java", "sha1": "2973d150c0dc1fefe998f834810d68f278ea58ec", "repository": "http://central.maven.org/maven2/", "name": "junit_junit", "actual": "@junit_junit//jar", "bind": "jar/junit/junit"},
    {"artifact": "org.apiguardian:apiguardian-api:1.0.0", "lang": "java", "sha1": "3ef5276905e36f4d8055fe3cb0bdcc7503ffc85d", "repository": "http://central.maven.org/maven2/", "name": "org_apiguardian_apiguardian_api", "actual": "@org_apiguardian_apiguardian_api//jar", "bind": "jar/org/apiguardian/apiguardian_api"},
    {"artifact": "org.hamcrest:hamcrest-core:1.3", "lang": "java", "sha1": "42a25dc3219429f0e5d060061f71acb49bf010a0", "repository": "http://central.maven.org/maven2/", "name": "org_hamcrest_hamcrest_core", "actual": "@org_hamcrest_hamcrest_core//jar", "bind": "jar/org/hamcrest/hamcrest_core"},
    {"artifact": "org.junit.jupiter:junit-jupiter-api:5.0.3", "lang": "java", "sha1": "43872be66bab0172073ac698062419755e563353", "repository": "http://central.maven.org/maven2/", "name": "org_junit_jupiter_junit_jupiter_api", "actual": "@org_junit_jupiter_junit_jupiter_api//jar", "bind": "jar/org/junit/jupiter/junit_jupiter_api"},
    {"artifact": "org.junit.jupiter:junit-jupiter-engine:5.0.3", "lang": "java", "sha1": "52fcc461185c48178608f687e962de6484dfb69e", "repository": "http://central.maven.org/maven2/", "name": "org_junit_jupiter_junit_jupiter_engine", "actual": "@org_junit_jupiter_junit_jupiter_engine//jar", "bind": "jar/org/junit/jupiter/junit_jupiter_engine"},
    {"artifact": "org.junit.jupiter:junit-jupiter-params:5.0.3", "lang": "java", "sha1": "2040154af126813745d61af0496f579ff688d20e", "repository": "http://central.maven.org/maven2/", "name": "org_junit_jupiter_junit_jupiter_params", "actual": "@org_junit_jupiter_junit_jupiter_params//jar", "bind": "jar/org/junit/jupiter/junit_jupiter_params"},
    {"artifact": "org.junit.platform:junit-platform-commons:1.0.3", "lang": "java", "sha1": "3663f3ddfe47df2a7bf363d5c0196f0c7a09820f", "repository": "http://central.maven.org/maven2/", "name": "org_junit_platform_junit_platform_commons", "actual": "@org_junit_platform_junit_platform_commons//jar", "bind": "jar/org/junit/platform/junit_platform_commons"},
    {"artifact": "org.junit.platform:junit-platform-engine:1.0.3", "lang": "java", "sha1": "7028a17adabd876b6d7530e43523a7f4fd109e18", "repository": "http://central.maven.org/maven2/", "name": "org_junit_platform_junit_platform_engine", "actual": "@org_junit_platform_junit_platform_engine//jar", "bind": "jar/org/junit/platform/junit_platform_engine"},
    {"artifact": "org.junit.platform:junit-platform-launcher:1.0.3", "lang": "java", "sha1": "91d799c70c3a597631883b77117046e09d6a4419", "repository": "http://central.maven.org/maven2/", "name": "org_junit_platform_junit_platform_launcher", "actual": "@org_junit_platform_junit_platform_launcher//jar", "bind": "jar/org/junit/platform/junit_platform_launcher"},
    {"artifact": "org.junit.platform:junit-platform-runner:1.0.3", "lang": "java", "sha1": "729452d6940baba95bd47b2691bafd9aab35c00f", "repository": "http://central.maven.org/maven2/", "name": "org_junit_platform_junit_platform_runner", "actual": "@org_junit_platform_junit_platform_runner//jar", "bind": "jar/org/junit/platform/junit_platform_runner"},
    {"artifact": "org.junit.platform:junit-platform-suite-api:1.0.3", "lang": "java", "sha1": "fa0d3534d7a5307e7101dad62b51b8592b23e1ce", "repository": "http://central.maven.org/maven2/", "name": "org_junit_platform_junit_platform_suite_api", "actual": "@org_junit_platform_junit_platform_suite_api//jar", "bind": "jar/org/junit/platform/junit_platform_suite_api"},
    {"artifact": "org.opentest4j:opentest4j:1.0.0", "lang": "java", "sha1": "6f09c598e9ff64bf0ce2fa7e7de49a99ba83c0b4", "repository": "http://central.maven.org/maven2/", "name": "org_opentest4j_opentest4j", "actual": "@org_opentest4j_opentest4j//jar", "bind": "jar/org/opentest4j/opentest4j"},
    ]

def maven_dependencies(callback = declare_maven):
    for hash in list_dependencies():
        callback(hash)
