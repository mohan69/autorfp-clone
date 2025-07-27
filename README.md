# AutoRFP Clone

A modern web application that replicates the AutoRFP.ai platform for automating Request for Proposal processes.

## Features

- 🤖 AI-Powered Content Generation
- ⚡ Automated Workflows
- 📊 Analytics & Insights
- 👥 Team Collaboration
- 📝 Custom Templates
- ✅ Compliance Tracking

## Tech Stack

- **Framework**: Next.js 14 with App Router
- **Language**: TypeScript
- **Styling**: Tailwind CSS
- **Animations**: Framer Motion
- **Icons**: Heroicons
- **Deployment**: Vercel

## Getting Started

### Prerequisites

- Node.js 18+ 
- npm or yarn

### Installation

1. Clone the repository
```bash
git clone <your-repo-url>
cd autorfp-clone
```

2. Install dependencies
```bash
npm install
```

3. Run the development server
```bash
npm run dev
```

4. Open [http://localhost:3000](http://localhost:3000) in your browser

## Deployment

### Deploy to Vercel (Recommended)

1. Push your code to GitHub
2. Connect your GitHub repository to Vercel
3. Vercel will automatically build and deploy your app

### Manual Deployment

1. Build the application
```bash
npm run build
```

2. Start the production server
```bash
npm start
```

### Deploy with Vercel CLI

1. Install Vercel CLI
```bash
npm i -g vercel
```

2. Deploy
```bash
vercel
```

## Project Structure

```
├── app/
│   ├── globals.css
│   ├── layout.tsx
│   └── page.tsx
├── public/
├── package.json
├── tailwind.config.js
├── tsconfig.json
└── vercel.json
```

## Customization

- Update colors in `tailwind.config.js`
- Modify content in `app/page.tsx`
- Add new pages in the `app/` directory
- Update styling in `app/globals.css`

## License

MIT License