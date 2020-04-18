# SSW-Podcast-Creator
Erstellt notwendige Dateien für gecachte Version von wavesurfer.js

Der SSW-Podcast-Creator...
- ermittelt mit Hilfe von ffprobe (ffmpeg) die Länge der eingegebenen mp3-Datei,
- erstellt mit Hilfe von BBCs audiowaveform eine JSON-Datei mit den Peaks
- und wandelt diese mittels Python-Script in normierte Werte zwischen 0 und 1 um

## Voraussetzungen

Notwendige Voraussetzungen sind:
- Windows 64Bit (nur für die kompilierte Release-Version)
- ffmpeg (https://www.ffmpeg.org/)
- BBCs audiowaveform (https://github.com/bbc/audiowaveform)
- Python
- das Python-Script von wavesurfer.js (https://wavesurfer-js.org/faq/)

## Vorlage

Die Vorlage zu diesem Programm ist die Anleitung auf der Seite https://wavesurfer-js.org/faq/. Die Peak-Generierung wurde überarbeitet.
