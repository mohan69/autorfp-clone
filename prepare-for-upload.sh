#!/bin/bash

echo "📦 Preparing AutoRFP for Vercel Deployment"
echo "=========================================="

# Create a deployment folder
mkdir -p deployment-ready

# Copy all necessary files
cp package.json deployment-ready/
cp next.config.js deployment-ready/
cp tailwind.config.js deployment-ready/
cp postcss.config.js deployment-ready/
cp tsconfig.json deployment-ready/
cp vercel.json deployment-ready/
cp .gitignore deployment-ready/
cp README.md deployment-ready/
cp DEPLOYMENT.md deployment-ready/

# Copy app directory
cp -r app deployment-ready/

echo "✅ Files prepared in 'deployment-ready' folder"
echo ""
echo "📋 Next steps:"
echo "1. Create a new GitHub repository"
echo "2. Upload all files from 'deployment-ready' folder"
echo "3. Go to vercel.com and import your GitHub repo"
echo "4. Click Deploy!"
echo ""
echo "🌐 Alternative: Open static-deploy.html in browser for preview"

# List files that will be deployed
echo ""
echo "📁 Files ready for deployment:"
find deployment-ready -type f | sort