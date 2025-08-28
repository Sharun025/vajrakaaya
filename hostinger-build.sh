#!/bin/bash

# Hostinger Build Script for Vajrakaaya
echo "🚀 Starting Hostinger build process..."

# Install dependencies
echo "📦 Installing dependencies..."
npm install

# Build the application
echo "🔨 Building the application..."
npm run build

# Check if build was successful
if [ $? -eq 0 ]; then
    echo "✅ Build completed successfully!"
    echo "📁 Build output: apps/web/.next"
else
    echo "❌ Build failed!"
    exit 1
fi

echo "🎉 Hostinger build process completed!"
