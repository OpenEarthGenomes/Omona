#!/bin/bash
echo "🚀 Projekt setup indítása..."

# Mappák létrehozása
mkdir -p .github/workflows
mkdir -p gradle/wrapper

# 1. Gradle wrapper properties
cat > gradle/wrapper/gradle-wrapper.properties << 'EOF'
distributionBase=GRADLE_USER_HOME
distributionPath=wrapper/dists
distributionUrl=https\://services.gradle.org/distributions/gradle-7.5-bin.zip
zipStoreBase=GRADLE_USER_HOME
zipStorePath=wrapper/dists
EOF

# 2. Gradle wrapper jar letöltése
echo "📥 Gradle wrapper jar letöltése..."
curl -L -o gradle/wrapper/gradle-wrapper.jar \
    https://github.com/gradle/gradle/raw/v7.5/gradle/wrapper/gradle-wrapper.jar

# 3. GitHub workflow
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

# 4. Jogok beállítása
chmod +x gradlew

echo "✅ ✅ ✅ MINDEN KÉSZ!"
echo "📁 Projekt szerkezet:"
find . -name "*.yml" -o -name "*.jar" -o -name "*.properties" -o -name "gradlew*" | head -20
