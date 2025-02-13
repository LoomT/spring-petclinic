javaApplication {
  javaVersion = 17
  dependencies {
    // Workaround for AOT issue (https://github.com/spring-projects/spring-framework/pull/33949) -->
    implementation("io.projectreactor:reactor-core:3.7.3")

    implementation("org.springframework.boot:spring-boot-starter-cache:3.4.2")
      implementation("org.springframework.boot:spring-boot-starter-data-jpa:3.4.2")
    implementation("org.springframework.boot:spring-boot-starter-thymeleaf:3.4.2")
    implementation("org.springframework.boot:spring-boot-starter-web:3.4.2")
    implementation("org.springframework.boot:spring-boot-starter-validation:3.4.2")
    implementation("javax.cache:cache-api:1.1.1")
    implementation("jakarta.xml.bind:jakarta.xml.bind-api:4.0.2")
    runtimeOnly("org.springframework.boot:spring-boot-starter-actuator:3.4.2")
    runtimeOnly("org.webjars:webjars-locator-lite:1.0.1")
    runtimeOnly("org.webjars.npm:bootstrap:5.3.3")
    runtimeOnly("org.webjars.npm:font-awesome:4.7.0")
    runtimeOnly("com.github.ben-manes.caffeine:caffeine:3.2.0")
    runtimeOnly("com.h2database:h2:2.3.232")
    runtimeOnly("com.mysql:mysql-connector-j:9.2.0")
    runtimeOnly("org.postgresql:postgresql:42.7.5")
//    developmentOnly("org.springframework.boot:spring-boot-devtools")
    testing {
      dependencies {
        implementation("org.springframework.boot:spring-boot-starter-test:3.4.2")
        implementation("org.springframework.boot:spring-boot-testcontainers:3.4.2")
        implementation("org.springframework.boot:spring-boot-docker-compose:3.4.2")
        implementation("org.testcontainers:junit-jupiter:1.20.4")
        implementation("org.testcontainers:mysql:1.20.4")
        implementation("org.junit.jupiter:junit-jupiter:5.11.4")
        runtimeOnly("org.junit.platform:junit-platform-launcher:1.11.4")
      }
    }
  }
}
