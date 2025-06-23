<!-- © Copyright RED SHADOWS | RS - Shadow-x78 -->

<<<<<<< HEAD
# Pterodactyl Containers 🔨
=======
# Pterodactyl Container 🔨
>>>>>>> 6ad255b080661678adbf6126711d0743d4340cad

![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)
![Pterodactyl](https://img.shields.io/badge/Pterodactyl-0e4688?style=for-the-badge&logo=pterodactyl&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)

## ✨ Features

- 🏗️ **Multi-arch builds**: AMD64 & ARM64
- 🤖 **CI/CD**: Automated GitHub Actions pipeline
- 🛡️ **Security**: Minimal, secure base images
- 🚀 **Production ready**: Optimized for Pterodactyl
- ⚡ **Fast**: Efficient caching

## 🐳 Supported Images

### <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/java/java-original.svg" alt="Java" width="20" height="20"/> Java

**Versions:** 8, 11, 17, 21
**Base:** OpenJDK (Alpine)

### <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/nodejs/nodejs-original.svg" alt="Node.js" width="20" height="20"/> Node.js

**Versions:** 18, 20, 22  
**Base:** Official Node.js (Alpine)

### <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/python/python-original.svg" alt="Python" width="20" height="20"/> Python

**Versions:** 3.9, 3.10, 3.11, 3.12
**Base:** Python Slim (Debian)

## 🚀 Usage

### 🐳 Pull from GitHub Container Registry

```bash
# Java 21

docker pull ghcr.io/red-shadows-rs/java_v21

# Node.js 22

docker pull ghcr.io/red-shadows-rs/nodejs_v22

# Python 3.12

docker pull ghcr.io/red-shadows-rs/python_v3.12
```

> Change the tag/version as needed.

### 🔨 Build locally

```bash
# Java 21

docker build -f src/generic/java/v21/Dockerfile -t pterodactyl-java:v21 src/generic/java/

# Node.js 22

docker build -f src/generic/nodejs/v22/Dockerfile -t pterodactyl-nodejs:v22 src/generic/nodejs/

# Python 3.12

docker build -f src/generic/python/v3.12/Dockerfile -t pterodactyl-python:v3.12 src/generic/python/
```

### ⚙️ Environment Variables

| Variable  | Description                | Default | Required |
|-----------|----------------------------|---------|----------|
| `STARTUP` | Startup command            | -       | ✅       |
| `TZ`      | Timezone                   | `UTC`   | ❌       |

### 📁 Volume

- `/home/container` — App files & data

### 🥚 With Pterodactyl Eggs

Add the image URLs to the "Docker Images" field in your egg configuration:

```
ghcr.io/red-shadows-rs/java_v21
ghcr.io/red-shadows-rs/nodejs_v22
ghcr.io/red-shadows-rs/python_v3.12
```

Select the image when creating a server. Set the `STARTUP` variable and working directory as needed.

## 🤖 GitHub Actions

- Builds all images on push to `main` or release
- Multi-platform (AMD64/ARM64)
- Uses build cache for speed

## 🤝 Contributing

1. Fork & branch
2. Make changes
3. Test locally
4. Pull request

## 📜 License

MIT — see [LICENSE](LICENSE)

---

<span style="font-weight:bold;vertical-align:middle;">&#169; 2025 Copyright</span>
<img src="https://img.shields.io/badge/RED%20SHADOWS%20%7C%20RS-DC143C?style=flat&logo=github&logoColor=white&labelColor=2F2F2F" alt="RED SHADOWS | RS" style="vertical-align:middle;"/> &#124; <img src="https://img.shields.io/badge/Shadow--x78-000000?style=flat&logo=github&logoColor=white&labelColor=2F2F2F" alt="Shadow-x78" style="vertical-align:middle;"/> - <span style="font-weight:bold;vertical-align:middle;">All rights reserved</span>
