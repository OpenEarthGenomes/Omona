#!/bin/bash
echo "🛠️ Gradle wrapper javítása..."

# Régi fájlok törlése
rm -f gradlew
rm -f gradlew.bat
rm -rf gradle/wrapper

# Új gradle wrapper létrehozása
gradle wrapper --gradle-version 7.5

echo "✅ Gradle wrapper újralétrehozva"
echo "📁 Ellenőrzés:"
ls -la gradlew
ls -la gradle/wrapper/
