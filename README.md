# Lyoko NMAP Scanner

Script interactivo en Bash para automatizacion de auditorias de red, descubrimiento de hosts y escaneos de puertos utilizando NMAP.

## Opciones del Menu

- Escaneo de direccion individual o rango CIDR (ej: `192.168.1.0/24`).
- Escaneo de rangos de puertos especificos (TCP y UDP).
- Descubrimiento de hosts con y sin ping.
- Tecnicas de escaneo avanzadas: TCP SYN scan, conexion completa (connect) y XMAS scan.

## Requisitos

- `nmap` instalado en el sistema.
- Privilegios `sudo` para tecnicas de escaneo que requieran raw sockets.

## Uso

```bash
chmod +x nmapScript.sh
./nmapScript.sh
```
