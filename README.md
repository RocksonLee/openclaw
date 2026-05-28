# OpenClaw Custom Stack

Reusable OpenClaw Docker and Portainer stack configuration.

## Repository

```text
git@github.com:RocksonLee/openclaw.git
cat > .gitignore <<'EOF'
# env / secrets
.env
*.env
.env.*
!.env.example

# keys / certs / tokens
*secret*
*token*
*key*
*.pem
*.p12
*.pfx

# local caches
node_modules/
npm/
.cache/
.DS_Store

# editor
.vscode/settings.json
.idea/
