#!/bin/bash
echo "🚀 TELJES GRADLE SETUP INDÍTASA..."

# 1. Mappák létrehozása
mkdir -p .github/workflows
mkdir -p gradle/wrapper

# 2. GRADLE-WRAPPER.JAR LETÖLTÉSE - ✅ EZ A LEGFONTOSABB!
echo "📥 Gradle wrapper.jar letöltése..."
curl -L -o gradle/wrapper/gradle-wrapper.jar \
    https://repo.maven.apache.org/maven2/gradle/wrapper/gradle-wrapper/3.1/gradle-wrapper-3.1.jar

# 3. Properties fájl
cat > gradle/wrapper/gradle-wrapper.properties << 'EOF'
distributionBase=GRADLE_USER_HOME
distributionPath=wrapper/dists
distributionUrl=https\://services.gradle.org/distributions/gradle-7.5-bin.zip
zipStoreBase=GRADLE_USER_HOME
zipStorePath=wrapper/dists
EOF

# 4. GitHub workflow
cat > .github/workflows/build.yml << 'EOF'
name: Build Kotlin Project

on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v4
    - name: Set up JDK
      uses: actions/setup-java@v4
      with:
        java-version: '17'
        distribution: 'temurin'
    - name: Grant execute permission for gradlew
      run: chmod +x gradlew
    - name: Build with Gradle
      run: ./gradlew build
EOF

echo "✅ ✅ ✅ MINDEN KÉSZ - GRADLE-WRAPPER.JAR IS!"
echo "📁 Fájlok:"
find . -name "*.jar" -o -name "*.yml" -o -name "gradlew*"
