# Chef Grundlagen
Wie der Name vermuten lässt, verwaltet Chef (engl. Koch) eine Reihe von Kochbüchern und deren zugehörige Rezepte und Zutaten. Im Folgenden wird die Struktur der Beispielanwendung erläutert und auf die Begriffe näher eingegangen.

## Verzeichnis Struktur {#struktur}

Die untere Abbildung zeigt die Verzeichnisstruktur der Beispielanwendung.

Hierbei ist das Verzeichnis **cookbooks** die Wurzel, die alle Kochbücher verwaltet.
Das Kochbuch **beleg** besteht aus den einzelnen Rezepten (**recipes**).
Das Verzeichnis **files/default** beinhaltet Dateien wie Textdateien oder diverse Skripte, welche in vereinzelten Rezepten benötigt werden.

```
.
├── cookbooks
│   ├── beleg
│       ├── attributes
│       ├── files
│       │   └── default
│       ├── recipes
│       ├── spec
│       │   └── unit
│       │       └── recipes
│       ├── templates
│       └── test
│           └── smoke
│               └── default
│   
│   

```
