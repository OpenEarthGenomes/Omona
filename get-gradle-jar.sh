#!/bin/bash
echo "🔍 Helyes gradle-wrapper.jar keresése..."

# Először próbáljuk meg a Gradle hivatalos forrásából
mkdir -p gradle/wrapper

# METHOD 1: Direct download from Gradle
echo "📥 1. módszer: Gradle hivatalos forrás..."
wget -O gradle/wrapper/gradle-wrapper.jar \
    https://github.com/gradle/gradle/raw/master/gradle/wrapper/gradle-wrapper.jar

# METHOD 2: Ha az első nem működik
if [ ! -f "gradle/wrapper/gradle-wrapper.jar" ]; then
    echo "📥 2. módszer: Maven Central..."
    wget -O gradle/wrapper/gradle-wrapper.jar \
        https://repo1.maven.org/maven2/gradle/wrapper/gradle-wrapper/3.1/gradle-wrapper-3.1.jar
fi

# METHOD 3: Ha még mindig nem sikerült
if [ ! -f "gradle/wrapper/gradle-wrapper.jar" ]; then
    echo "📥 3. módszer: Alternatív forrás..."
    wget -O gradle/wrapper/gradle-wrapper.jar \
        https://downloads.gradle-dn.com/distributions/gradle-7.5-bin.zip
    # Csak a wrapper.jar kinyerése a zip-ből
    unzip -j gradle/wrapper/gradle-wrapper.jar 'gradle-7.5/lib/gradle-wrapper-*.jar' -d gradle/wrapper/
    mv gradle/wrapper/gradle-wrapper-*.jar gradle/wrapper/gradle-wrapper.jar
fi

echo "📁 Ellenőrzés:"
ls -la gradle/wrapper/gradle-wrapper.jar 2>/dev/null || echo "❌ Nem sikerült letölteni a .jar fájlt"

if [ -f "gradle/wrapper/gradle-wrapper.jar" ]; then
    echo "✅ SIKERES! gradle-wrapper.jar létrehozva"
else
    echo "❌ NEM SIKERÜLT letölteni a .jar fájlt"
    echo "⚠️  Kérlek, manuálisan töltsd le:"
    echo "https://github.com/gradle/gradle/raw/master/gradle/wrapper/gradle-wrapper.jar"
fi
