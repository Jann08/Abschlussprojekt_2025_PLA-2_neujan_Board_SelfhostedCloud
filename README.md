# Selfhosted Cloud Projekt (PLA-2 Abschlussarbeit 2025)

## 🔧 Projektbeschreibung
Ziel dieses Projekts war es, auf einem Raspberry Pi eine vollständig selfhosted Cloud-Infrastruktur mit Webinterface, Reverse Proxy und Sicherheitsfunktionen zu realisieren.

## ⚙️ Verwendete Technologien
- **Docker + Docker Compose**
- **Traefik v3.0 (als Reverse Proxy mit TLS)**
- **AdGuard Home (DNS-Filterung + DHCP)**
- **Fail2Ban (SSH Schutz mit Ban-Mechanismus)**
- **Netdata, Homer, Uptime Kuma, Filebrowser, Bookstack**

## 🖥️ Dienste
| Dienst         | Domain                 | Beschreibung                    |
|----------------|------------------------|----------------------------------|
| Traefik        | `https://traefik.local`   | Dashboard für den Reverse Proxy |
| Filebrowser    | `https://file.local`      | Web-Dateimanager                |
| Uptime Kuma    | `https://kuma.local`      | Monitoring Tool                 |
| Homer          | `https://homer.local`     | Dashboard / Bookmarkseite       |
| Netdata        | `https://netdata.local`   | System Monitoring               |
| AdGuard Home   | `https://dns.local`       | DNS & DHCP Verwaltung           |
| Bookstack      | `https://bookstack.local` | Wissensdatenbank (mit DB)       |

## 📁 Projektstruktur (Auszug)
cloudcore-project/
├── adguard/
│ └── AdGuard_Docker-compose.yml
├── filebrowser/
│ └── Filebrowser_Docker-compose.yml
├── homer/
│ └── Homer_Docker-compose.yml
├── netdata/
│ └── Netdata_Docker-compose.yml
├── uptime-kuma/
│ └── UptimeKuma_Docker-compose.yml
├── bookstack/
│ └── Bookstack_Docker-compose.yml
├── reverse-proxy/
│ └── Traefik_Docker-compose.yml
├── start_script.sh
├── stop_script.sh
└── README.md

bash
Kopieren
Bearbeiten

## 🔐 Sicherheit
- SSH gehärtet (kein Passwort-Login, Port 2121, nur via Public Key)
- Fail2Ban aktiv gegen Brute-Force
- HTTPS über eigenes TLS-Zertifikat
- Zugriff auf Dienste nur intern via Traefik

## 📦 Starten & Stoppen aller Container
```bash
./start_script.sh    # Startet alle Container
./stop_script.sh     # Stoppt alle Container