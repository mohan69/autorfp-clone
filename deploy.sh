#!/bin/bash

echo "🚀 AutoRFP Deployment Script"
echo "=============================="

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is not installed"
    echo "Please install Node.js from https://nodejs.org/"
    echo ""
    echo "Alternative deployment options:"
    echo "1. Deploy directly to Vercel: https://vercel.com/new"
    echo "2. Deploy to Netlify: https://app.netlify.com/drop"
    echo "3. Use GitHub Codespaces or GitPod"
    exit 1
fi

# Check if npm is available
if ! command -v npm &> /dev/null; then
    echo "❌ npm is not available"
    exit 1
fi

echo "✅ Node.js found: $(node --version)"
echo "✅ npm found: $(npm --version)"

# Install dependencies
echo "📦 Installing dependencies..."
npm install

if [ $? -ne 0 ]; then
    echo "❌ Failed to install dependencies"
    exit 1
fi

# Build the application
echo "🔨 Building application..."
npm run build

if [ $? -ne 0 ]; then
    echo "❌ Build failed"
    exit 1
fi

echo "✅ Build completed successfully!"
echo ""
echo "🚀 Deployment options:"
echo "1. Run locally: npm start"
echo "2. Deploy to Vercel: npx vercel"
echo "3. Deploy to Netlify: drag the 'out' folder to https://app.netlify.com/drop"

# Check if Vercel CLI is available
if command -v vercel &> /dev/null; then
    echo ""
    read -p "Deploy to Vercel now? (y/n): " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        vercel --prod
    fi
else
    echo ""
    echo "💡 To deploy to Vercel:"
    echo "   npm i -g vercel"
    echo "   vercel --prod"
fi