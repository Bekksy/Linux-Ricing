# 🌿 Waybar Rice – Cozy Hyprland Setup

Ein minimalistisches, Ghibli-inspiriertes Waybar-Design für Hyprland – mit Fokus auf Übersicht, sanfte Farben und funktionale Module.  
Die Konfiguration ist noch im Ausbau, aber bereits im Alltag einsatzfähig.

## 🧩 Module & Features

- Custom Battery-Widget mit Ladezustand & Icons
- Lautstärke & Helligkeit
- Themperatur & CPU
- Custom App Launcher & Powerbutton
- Workspace Anzeige
- Transparente Bar mit Schatten
- Farbschema abgestimmt auf Wallpaper
- Animierte Separators mit ASCII-Art
- Uhr & Datum mit flexibler Formatierung

## ⚙️ Abhängigkeiten

* **Waybar**
* [Nerd Fonts](https://www.nerdfonts.com/) (z. B. JetBrainsMono Nerd Font)
* Einige Module benötigen zusätzliche Tools:
  - `playerctl`, `pamixer`, `acpi`, `curl`, `jq`

## 📸 Screenshots

### 1. Waybar mit aktiven Modulen  
<img src="https://github.com/user-attachments/assets/8d377fb8-6182-4c9f-9919-6542eec9579e" alt="Desktop Waybar" width="1000">

### 2. Clean Desktop  
<img src="https://github.com/user-attachments/assets/84d0eec5-bcde-40ee-ab76-989ce5dead9d" alt="Desktop" width="600">

### 3. Desktop mit geöffneten Fenstern  
<img src="https://github.com/user-attachments/assets/8f594c5e-4c6f-42ac-8962-f7deae8a9e30" alt="Desktop Hypr" width="600">

## 📁 Struktur

```bash
.config/
├── waybar/
│   ├── config.jsonc        # Hauptkonfiguration
│   ├── style.css           # Farbschema & Layout
│   └── scripts/            # eigene Bash-Widgets (battery, weather etc.)

