# Magambrowser
Web browser App for android 
Magambrowser

SafeFile download:

private val safeFileTypes = listOf(
    "pdf", "txt", "doc", "docx", "xls", "xlsx", 
    "jpg", "jpeg", "png", "gif", "bmp", "webp",
    "mp3", "wav", "ogg", "mp4", "avi", "mkv", "apk"
)



Androidra készült webböngésző alkalmazás Kotlin nyelven.

📁 Projekt Struktúra

```
app/
├── src/main/
│   ├── AndroidManifest.xml
│   ├── java/com/magambrowser/MainActivity.kt
│   └── res/
│       ├── layout/activity_main.xml
│       └── drawable/rounded_edittext.xml
```

🚀 Főbb jellemzők

· Android 10+ kompatibilitás
· Kotlin nyelven írva
· A-IDE környezetben fejlesztve
· Egyszerű és hatékony böngészési élmény

📥 Fordítás és telepítés

1. Klónozd a repository-t:

```bash
git clone https://github.com/OpenEarthGenomes/Magambrowser.git
```

1. Nyisd meg az A-IDE alkalmazásban
2. Fordítsd és telepítsd az APK-t

🤝 Hozzájárulás

Szeretnél hozzájárulni a projekthez?

· Nyiss egy Issue-t a javaslataiddal
· Vagy küldj Pull Request-et

---
Magambrowser/
├── 📜 settings.gradle              (ÚJ - hiányzott!)
├── 📜 build.gradle                 (ÚJ - hiányzott!) 
├── 📜 gradlew                      (MÁR VAN)
├── 📜 gradlew.bat                  (MÁR VAN)
├── 📁 gradle/wrapper/
│   ├── 📜 gradle-wrapper.jar       (MÁR VAN)
│   └── 📜 gradle-wrapper.properties (MÁR VAN)
├── 📁 app/
│   └── 📜 build.gradle             (MÁR VAN)
└── 📁 .github/workflows/
    └── 📜 build.yml                (MÁR VAN)
License: MIT License



MyWebLight/
├── 📄 build.gradle                          # 🔥 Project szintű build file
├── 📄 settings.gradle
├── 📄 gradle.properties
└── 📁 app/                                  # 🔥 Main application module
    ├── 📄 build.gradle                      # 🔥 MODUL BUILD: API 22 beállítások
    ├── 📄 proguard-rules.pro
    └── 📁 src/
        └── 📁 main/                         # 🔥 Fő forráskódok
            ├── 📄 AndroidManifest.xml       # 🔥 /app/src/main/AndroidManifest.xml
            ├── 📁 java/
            │   └── 📁 com/
            │       └── 📁 magambrowser/
            │           └── 📄 MainActivity.kt  # 🔥 /app/src/main/java/com/magambrowser/MainActivity.kt
            └── 📁 res/                      # 🔥 Resource fájlok
                ├── 📁 drawable/
                │   └── 📄 rounded_edittext.xml  # 🔥 /app/src/main/res/drawable/rounded_edittext.xml
                ├── 📁 layout/
                │   └── 📄 activity_main.xml     # 🔥 /app/src/main/res/layout/activity_main.xml
                ├── 📁 mipmap-hdpi/
                │   ├── 📄 ic_launcher.png
                │   └── 📄 ic_launcher_round.png
                ├── 📁 mipmap-mdpi/
                │   ├── 📄 ic_launcher.png
                │   └── 📄 ic_launcher_round.png
                ├── 📁 mipmap-xhdpi/
                │   ├── 📄 ic_launcher.png
                │   └── 📄 ic_launcher_round.png
                ├── 📁 mipmap-xxhdpi/
                │   ├── 📄 ic_launcher.png
                │   └── 📄 ic_launcher_round.png
                ├── 📁 mipmap-xxxhdpi/
                │   ├── 📄 ic_launcher.png
                │   └── 📄 ic_launcher_round.png
                └── 📁 values/
                    ├── 📄 colors.xml
                    ├── 📄 strings.xml
                    ├── 📄 styles.xml
                    └── 📄 themes.xml
