# 🚀 Deploy AutoRFP to Vercel

## ⚠️ IMPORTANT: Deploy from ROOT directory

The build error occurs when deploying from the wrong directory. Make sure you deploy the ROOT folder, not the `deployment-ready` folder.

## Quick Deployment Steps

### Method 1: Deploy via Vercel Dashboard (Easiest)

1. **Create a GitHub Repository**
   - Go to [github.com](https://github.com) and create a new repository
   - Name it something like `autorfp-clone`
   - Don't initialize with README (we already have files)

2. **Upload Your Code to GitHub**
   - Upload these files from the ROOT directory (not deployment-ready):
     - `app/` folder (contains layout.tsx, page.tsx, globals.css)
     - `package.json`
     - `next.config.js`
     - `tailwind.config.js`
     - `postcss.config.js`
     - `tsconfig.json`
     - `vercel.json`
     - `.gitignore`

3. **Deploy to Vercel**
   - Go to [vercel.com](https://vercel.com)
   - Sign up/login (you can use your GitHub account)
   - Click "New Project"
   - Import your GitHub repository
   - Vercel will automatically detect it's a Next.js project
   - Click "Deploy"
   - Your site will be live in ~2 minutes!

### Method 2: Deploy via Vercel CLI

If you have Node.js installed:

```bash
# Install Vercel CLI
npm i -g vercel

# Deploy
vercel

# Follow the prompts:
# - Link to existing project? No
# - Project name: autorfp-clone
# - Directory: ./
# - Override settings? No

# Deploy to production
vercel --prod
```

### Method 3: Drag & Drop (Static Version)

For immediate deployment without GitHub:
1. Open `static-deploy.html` in your browser to test
2. Go to [app.netlify.com/drop](https://app.netlify.com/drop)
3. Drag the `static-deploy.html` file
4. Your site is live instantly!

## What Happens During Deployment

Vercel will:
1. Install dependencies (`npm install`)
2. Build the Next.js app (`npm run build`)
3. Deploy to their global CDN
4. Provide you with a live URL

## Custom Domain (Optional)

After deployment:
1. Go to your Vercel dashboard
2. Click on your project
3. Go to "Settings" → "Domains"
4. Add your custom domain

## Environment Variables (If Needed Later)

For future features requiring API keys:
1. Go to Vercel dashboard → Your project
2. Settings → Environment Variables
3. Add your variables

## Troubleshooting

**Build fails?**
- Check that all dependencies are in `package.json`
- Ensure TypeScript files have no errors

**Site not loading?**
- Check the build logs in Vercel dashboard
- Verify all imports are correct

**Need help?**
- Vercel has excellent documentation
- Their support is very responsive

## Your Live Site

Once deployed, you'll get a URL like:
`https://autorfp-clone-username.vercel.app`

You can also connect a custom domain later!