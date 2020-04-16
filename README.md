# SSW-Podcast-Creator
Erstellt notwendige Dateien für gecachte Version von wavesurfer.js

Der SSW-Podcast-Creator...
- konvertiert mp3-Dateien mit Hilfe von ffmpeg in eine AAC-Datei mit 128 kbps Bitrate,
- erstellt mit Hilfe von BBCs audiowaveform eine JSON-Datei mit den Peaks
- und wandelt diese mittels Python-Script in normierte Werte zwischen 0 und 1 um

## Voraussetzungen

Notwendige Voraussetzungen sind:
- Windows 64Bit (nur für die kompilierte Release-Version)
- ffmpeg (https://www.ffmpeg.org/)
- BBCs audiowaveform (https://github.com/bbc/audiowaveform)
- Python
- das Python-Script von wavesurfer.js (https://wavesurfer-js.org/faq/)
