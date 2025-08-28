# Hostinger Support Request Template

## 📧 **Copy and paste this message to Hostinger Support:**

---

**Subject:** Need Node.js Configuration for Next.js Application Deployment

**Message:**

Hello Hostinger Support Team,

I need help configuring my hosting for a Node.js/Next.js application deployment.

**Repository Details:**
- Repository: https://github.com/Sharun025/vajrakaaya
- Branch: master
- Application Type: Next.js 14 (Node.js application)

**Current Issue:**
My deployment is failing because Hostinger is looking for PHP/Composer files instead of recognizing this as a Node.js project. The deployment ends immediately after checking for composer.lock/composer.json files.

**Required Configuration:**
Please configure my hosting for Node.js deployment with the following settings:

1. **Runtime:** Node.js 18.x or higher
2. **Build Command:** `npm run hostinger:build`
3. **Output Directory:** `apps/web/.next`
4. **Install Command:** `npm install`
5. **Start Command:** `npm run hostinger:start`

**Environment Variables Needed:**
```
NODE_ENV=production
DATABASE_URL=file:./prisma/production.db
NEXTAUTH_URL=https://my-domain.com
NEXTAUTH_SECRET=my-production-secret
```

**Project Structure:**
This is a monorepo with the Next.js application in the `apps/web` directory.

**Files in Repository:**
- `package.json` (root with Node.js scripts)
- `apps/web/package.json` (Next.js application)
- `.hostinger` (deployment configuration)
- `nodejs.json` (Node.js runtime config)

Please help me configure the hosting environment for Node.js deployment.

Thank you!

---

## 📞 **How to Contact Hostinger Support:**

1. **Live Chat:** Available in hPanel
2. **Email:** support@hostinger.com
3. **Ticket System:** In hPanel → Support → Create Ticket

## 🔄 **Alternative: Try Different Hosting**

If Hostinger continues to have issues, consider these Node.js-friendly alternatives:

### **Vercel (Recommended for Next.js):**
- Free tier available
- Perfect for Next.js applications
- Automatic deployments from GitHub

### **Netlify:**
- Free tier available
- Good for static sites and Next.js

### **Railway:**
- Node.js focused
- Easy deployment

### **Render:**
- Free tier available
- Good for Node.js applications

## 🚀 **Quick Vercel Deployment (If needed):**

If you want to try Vercel instead:

1. Go to [vercel.com](https://vercel.com)
2. Sign up with GitHub
3. Import your repository: `https://github.com/Sharun025/vajrakaaya`
4. Vercel will automatically detect it as a Next.js project
5. Deploy with one click

**Would you like me to help you set up Vercel deployment as an alternative?**
