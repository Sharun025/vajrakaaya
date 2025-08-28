#!/bin/bash

# 🚀 Vajrakaaya Deployment Script for Hostinger
# This script prepares your application for deployment

echo "🚀 Starting Vajrakaaya deployment preparation..."

# Check if we're in the right directory
if [ ! -f "package.json" ]; then
    echo "❌ Error: package.json not found. Please run this script from the project root."
    exit 1
fi

# Install dependencies
echo "📦 Installing dependencies..."
npm install

# Build the application
echo "🔨 Building the application..."
npm run build

# Check if build was successful
if [ $? -eq 0 ]; then
    echo "✅ Build completed successfully!"
else
    echo "❌ Build failed. Please check the error messages above."
    exit 1
fi

# Create production environment file if it doesn't exist
if [ ! -f "apps/web/.env.production" ]; then
    echo "📝 Creating production environment file..."
    cat > apps/web/.env.production << EOF
# Production Environment Variables for Hostinger
DATABASE_URL="file:./prisma/production.db"
NEXTAUTH_URL="https://your-domain.com"
NEXTAUTH_SECRET="your-production-secret-key-here"
NODE_ENV="production"
EOF
    echo "⚠️  Please update apps/web/.env.production with your actual domain and secret key"
fi

# Create .gitignore if it doesn't exist
if [ ! -f ".gitignore" ]; then
    echo "📝 Creating .gitignore file..."
    cat > .gitignore << EOF
# Dependencies
node_modules/
.pnp
.pnp.js

# Testing
/coverage

# Next.js
/.next/
/out/

# Production
/build

# Misc
.DS_Store
*.pem

# Debug
npm-debug.log*
yarn-debug.log*
yarn-error.log*

# Local env files
.env*.local
.env.production

# Vercel
.vercel

# TypeScript
*.tsbuildinfo
next-env.d.ts

# Database
*.db
*.db-journal

# Turbo
.turbo
EOF
fi

# Initialize git if not already done
if [ ! -d ".git" ]; then
    echo "📝 Initializing git repository..."
    git init
    git add .
    git commit -m "Initial commit for deployment"
    echo "⚠️  Please add your GitHub remote: git remote add origin https://github.com/yourusername/vajrakaaya.git"
fi

echo ""
echo "🎉 Deployment preparation completed!"
echo ""
echo "📋 Next steps:"
echo "1. Update apps/web/.env.production with your actual domain and secret key"
echo "2. Push to GitHub: git push -u origin main"
echo "3. Follow the DEPLOYMENT_GUIDE.md for Hostinger setup"
echo "4. Configure environment variables in Hostinger hPanel"
echo "5. Deploy using Git integration in Hostinger"
echo ""
echo "📖 For detailed instructions, see: DEPLOYMENT_GUIDE.md"
