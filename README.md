<!-- © Copyright RED SHADOWS | RS - Shadow-x78 -->

# PterodactylContainer 🔨

![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)
![Pterodactyl](https://img.shields.io/badge/Pterodactyl-0e4688?style=for-the-badge&logo=pterodactyl&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)

<div align="center">
  <br>
  🐳 <strong>Docker Containers for Pterodactyl Panel</strong> 🚀
  <br>
</div>

## ✨ Features

- 🏗️ **Multi-architecture support**: Build for AMD64 and ARM64 platforms
- 🤖 **Automated CI/CD**: Complete GitHub Actions pipeline for building and testing
- 🛡️ **Security first**: Minimal attack surface with secure base images
- 🚀 **Production ready**: Pre-configured and optimized for Pterodactyl Panel
- ⚡ **Fast builds**: Efficient caching and optimized Dockerfiles

## 🐳 Supported Images

### <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/java/java-original.svg" alt="Java" width="20" height="20"/> Java Runtime Environment

**Versions:** 8, 11, 17, 21, 23  
**Base:** OpenJDK with Alpine Linux

### <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/nodejs/nodejs-original.svg" alt="Node.js" width="20" height="20"/> Node.js Runtime

**Versions:** 12, 14, 16, 18, 20, 22  
**Base:** Official Node.js with Alpine Linux

### <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/python/python-original.svg" alt="Python" width="20" height="20"/> Python Runtime

**Versions:** 3.6, 3.7, 3.8, 3.9, 3.11  
**Base:** Python Slim with Debian

## 🚀 Usage

### 🔨 Build Docker images locally

```bash
# Java 17 image
docker build -f src/generic/java/v17/Dockerfile -t pterodactyl-java:v17 src/generic/java/

# Node.js 18 image  
docker build -f src/generic/nodejs/v18/Dockerfile -t pterodactyl-nodejs:v18 src/generic/nodejs/

# Python 3.9 image
docker build -f src/generic/python/v3.9/Dockerfile -t pterodactyl-python:v3.9 src/generic/python/
```

### ⚙️ Environment Variables

| Variable | Description | Default | Required |
|----------|-------------|---------|----------|
| `STARTUP` | Application startup command | - | ✅ |
| `TZ` | Timezone setting | `UTC` | ❌ |

### 📁 Volume

- `/home/container` - Application files and data directory

### 🎮 Using with Pterodactyl Panel

1. **Create a new server** in your Pterodactyl Panel
2. **Set the Docker Image** to one of the built images (e.g., `pterodactyl-java:v17`)
3. **Configure startup command** in the `STARTUP` environment variable
4. **Set working directory** to `/home/container`
5. **Start your server** and enjoy!

## 🤖 GitHub Actions

⚙️ Builds all images automatically when code is pushed to main branch.

### 🔧 Workflow Details

- **Trigger**: Push to `main` branch, manual dispatch, or releases
- **Multi-platform**: Builds for both AMD64 and ARM64 architectures  
- **Caching**: Uses GitHub Actions cache for faster builds

## 🤝 Contributing

🎯 We welcome contributions to improve the containers!

### 📋 Steps to Contribute

1. 🍴 **Fork** the repository
2. 🌿 **Create** a feature branch
3. ✏️ **Make** your changes
4. 🧪 **Test** locally
5. 📤 **Submit** a Pull Request

## 📜 License

📄 MIT License - see [LICENSE](LICENSE) file for details.

---

<div align="center">

**⭐ Star this repository if it helped you! ⭐**

**© Copyright** [![RED SHADOWS | RS](https://img.shields.io/badge/RED%20SHADOWS%20|%20RS-DC143C?style=flat&logo=github&logoColor=white&labelColor=2F2F2F)](https://github.com/RED-SHADOWS-RS) **|** [![Shadow-x78](https://img.shields.io/badge/Shadow--x78-000000?style=flat&logo=github&logoColor=white&labelColor=2F2F2F)](https://github.com/Shadow-x78)

</div>
