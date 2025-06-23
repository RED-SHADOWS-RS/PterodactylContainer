<!-- © Copyright RED SHADOWS | RS - Shadow-x78 -->

# Pterodactyl Containers 🔨

![Pterodactyl](https://img.shields.io/badge/Pterodactyl-0e4688?style=for-the-badge&logo=pterodactyl&logoColor=white)
![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)
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

> **Authentication Required:**
> To push images to GitHub Container Registry (GHCR), you must create a **Classic Personal Access Token (classic PAT)** with the following scopes:
>
> - `write:packages`
> - `read:packages`
> - `delete:packages`
>
> After creating the token, add it to your repository secrets as **GHCR_TOKEN** under:
>
> `GitHub Repository → Settings → Secrets and variables → Actions`
>
> This token will be used for authentication during the image push process in GitHub Actions.

### 🐳 Pull from GitHub Container Registry

```bash
# Java 21
docker pull ghcr.io/red-shadows-rs/pterodactyl-containers/java:v21

# Node.js 22
docker pull ghcr.io/red-shadows-rs/pterodactyl-containers/nodejs:v22

# Python 3.12
docker pull ghcr.io/red-shadows-rs/pterodactyl-containers/python:v3.12
```

> Change the tag/version as needed.

### 🔨 Build locally

```bash
# Java 21
docker build -f src/generic/java/v21/Dockerfile -t ghcr.io/red-shadows-rs/pterodactyl-containers/java:v21 src/generic/java/

# Node.js 22
docker build -f src/generic/nodejs/v22/Dockerfile -t ghcr.io/red-shadows-rs/pterodactyl-containers/nodejs:v22 src/generic/nodejs/

# Python 3.12
docker build -f src/generic/python/v3.12/Dockerfile -t ghcr.io/red-shadows-rs/pterodactyl-containers/python:v3.12 src/generic/python/
```

### ⚙️ Environment Variables

| Variable  | Description                | Default | Required |
|-----------|----------------------------|---------|----------|
| `STARTUP_FILE` | Startup File            | -       | ✅       |
| `TZ`      | Timezone                   | `UTC`   | ❌       |

### 📁 Volume

- `/home/container` — App files & data


### 🥚 Pterodactyl Eggs

Find official Eggs and setup guides here:

[![Pterodactyl Eggs](https://img.shields.io/badge/Pterodactyl%20Eggs-Repository-blue?logo=github)](https://github.com/red-shadows-rs/pterodactyl-eggs/blob/main/README.md)

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
