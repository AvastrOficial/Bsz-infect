# 🧟 BSZ INFECTION - Joker Strain Tracker

## 📋 Tabla de Contenidos
- [📖 Descripción General](#-descripción-general)
- [🔐 ¿Qué es un Hash?](#-qué-es-un-hash)
- [🌐 APIs Utilizadas](#-apis-utilizadas)
- [🏗️ Arquitectura del Proyecto](#️-arquitectura-del-proyecto)
- [🚀 Instalación y Uso](#-instalación-y-uso)

---

## 📖 Descripción General

**BSZ INFECTION** es una herramienta web especializada en el análisis y seguimiento de muestras de malware, enfocada en la familia **Joker** (Spyware/Billing Fraud para Android).

Integra datos en tiempo real desde **MalwareBazaar (abuse.ch)** y permite análisis avanzados mediante **VirusTotal API v3**.

### 🔥 Características principales:
- 📊 Visualización completa de muestras
- 📋 Copiado de hashes con un clic
- ⬇️ Descarga directa desde MalwareBazaar
- 🧪 Análisis con VirusTotal
- 🔎 Filtrado dinámico
- 🌐 Soporte para múltiples proxies CORS

---

## 🔐 ¿Qué es un Hash?

### 📌 Definición
Un **hash** es una función criptográfica que convierte datos en una cadena única e irreversible. Es la **huella digital** de un archivo.

---

### 🧬 Tipos de Hash

| Tipo | Longitud | Características | Uso |
|------|----------|-----------------|-----|
| **MD5** | 32 | Obsoleto | Integridad básica |
| **SHA-1** | 40 | Débil | Identificación |
| **SHA-256** | 64 | Seguro | Malware |
| **SHA-384** | 96 | SHA-2 | Seguridad |
| **SHA-512** | 128 | Muy seguro | Firmas |

---

### 🛡️ Importancia en Ciberseguridad

1. Identificación única  
2. Compartición de inteligencia  
3. Detección rápida  
4. Análisis forense  

---

### 📌 Ejemplo
Archivo: com.warhaw.fastclean.peter_1.1.3.xapk
SHA256: 2f5454633c80c15f88bbf90d265fb8dc110ea79836de16d8c680b1380f163dae
MD5: a89c1443e7aeffa61355114457089ec2

---

## 🌐 APIs Utilizadas

### 1️⃣ MalwareBazaar (abuse.ch)

**Endpoint:**

https://bazaar.abuse.ch/ajax/


**Método:** `POST`

**Parámetros:**
```js
query=signature&signature=Joker
```

### 📥 Campos Devueltos
```html
sha256_hash
md5_hash
sha1_hash
file_name
file_type
file_size
first_seen
last_seen
signature
tags
reporter
ssdeep
tlsh
imphash
```
### 🧪 Uso
```javascript
fetch("https://bazaar.abuse.ch/ajax/", {
    method: "POST",
    headers: { "Content-Type": "application/x-www-form-urlencoded" },
    body: "query=signature&signature=Joker"
})
```

### 2️⃣ VirusTotal API v3

- 📎 https://developers.virustotal.com/reference/overview

### 🔗 Endpoints
```html
Endpoint	Función
/files/{hash}	Análisis
/comments	Comentarios
/contacted_urls	URLs
/contacted_ips	IPs
/contacted_domains	Dominios
/bundled_files	Archivos incluidos
/dropped_files	Archivos generados
```

### 🔐 Autenticación
- x-apikey: TU_API_KEY
- 
### ⚠️ Límites
```javascript
4 requests/minuto
500 requests/día

// 🏗️ Arquitectura del Proyecto
BSZ INFECTION/
├── index.html
├── styles/
├── scripts/
└── README.md
```

### ⚙️ Estructura del Código
// 1. Fetch
- async function fetchMalwareData() {}

// 2. Procesamiento
- function extractDataArray(rawData) {}

// 3. Renderizado
- function renderTable(malwareList, filterText) {}

// 4. VirusTotal
- async function vtScan(hash, apiKey) {}

// 5. Click Hash
- function handleHashClick(el) {}

### 🔄 Flujo
```javascript
Usuario
 │
 ├──→ Fetch → Tabla
 ├──→ Click hash → Copia + VT
 └──→ Escaneo → Resultados
```

### 🚀 Instalación y Uso
- 📋 Requisitos
- Navegador moderno
- Internet
- API Key (opcional)
### ⚡ Pasos
# Ejecutar servidor local
```python
python -m http.server 8000
```
- Abrir:
```python
http://localhost:8000
```

### 🔑 VirusTotal
- Registrarse
- Copiar API key
- Pegar en la web
### foto actual : 
<img width="1916" height="802" alt="image" src="https://github.com/user-attachments/assets/1136bd96-e91d-481b-817b-d55b32e5abc9" />

 
# Bsz-infect - Termux
![image](https://github.com/AvastrOficial/Bsz-infect/assets/91764815/45926130-afda-413d-85fb-bedf09c43f18)
<br></br>
script de Bash utilizado para ejecutar algún tipo de proceso de infección o prueba de seguridad
## Instalacion para [Termux] :
apt-get update 
<br></br>
apt-get upgrade 
<br></br>
pkg install python 
<br></br>
pkg install python2 
<br></br>
pkg install git 
<br></br>
pip install lolcat
<br></br>
git clone https://github.com/AvastrOficial/Bsz-infect
<br></br>
cd $HOME
<br></br>
ls
<br></br>
cd Bsz-infect
<br></br>
ls
<br></br>
bash Bsz-infect.sh
<br></br>
## Informacion : 
INFECTAR :
Desde esta opción obtendrás un enlace de virus en tu termux, simplemente envía ese enlace a tu víctima y deja que la diversión suceda.
<br></br>
ACTUALIZAR :
Desde esta opción puedes actualizar el script de infección.
<br></br>
SALIDA :
Desde esta opción puedes salir de la herramienta de infección.
<br></br>
![image](https://github.com/AvastrOficial/Bsz-infect/assets/91764815/29a8dabc-dd64-4785-888f-2c69e42b2cc7)
https://replit.com/@StrAva1/Bsz-Infect?v=1
