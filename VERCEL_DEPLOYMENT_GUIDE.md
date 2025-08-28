# Vercel Deployment Guide for Vajrakaaya

## 🚀 **Why Vercel?**
- ✅ **Perfect for Next.js** - Built by the creators of Next.js
- ✅ **Automatic detection** - No manual configuration needed
- ✅ **Free tier available** - No cost for basic deployment
- ✅ **Global CDN** - Fast loading worldwide
- ✅ **Automatic HTTPS** - Secure by default
- ✅ **Git integration** - Automatic deployments on push

## 📋 **Step-by-Step Deployment**

### **Step 1: Sign Up for Vercel**
1. Go to [vercel.com](https://vercel.com)
2. Click **"Sign Up"**
3. Choose **"Continue with GitHub"**
4. Authorize Vercel to access your GitHub account

### **Step 2: Import Your Repository**
1. Click **"New Project"**
2. Select **"Import Git Repository"**
3. Find: `vajrakaaya` (https://github.com/Sharun025/vajrakaaya)
4. Click **"Import"**

### **Step 3: Configure Project Settings**
**Framework Preset:** Next.js (auto-detected)
**Root Directory:** `apps/web` (set this manually)
**Build Command:** `npm run build` (auto-detected)
**Output Directory:** `.next` (auto-detected)
**Install Command:** `npm install` (auto-detected)

### **Step 4: Environment Variables**
Add these in the Vercel dashboard:

```env
NODE_ENV=production
DATABASE_URL=file:./prisma/production.db
NEXTAUTH_URL=https://your-app-name.vercel.app
NEXTAUTH_SECRET=your-super-secure-production-secret-key-here
```

### **Step 5: Deploy**
1. Click **"Deploy"**
2. Wait for build to complete (2-3 minutes)
3. Your app will be live at: `https://your-app-name.vercel.app`

## 🔧 **Post-Deployment**

### **Test Your Application**
1. Visit your Vercel URL
2. Test the login: `admin@vajrakaaya.com` / `admin123`
3. Navigate through all dashboard sections

### **Custom Domain (Optional)**
1. Go to your project settings in Vercel
2. Click **"Domains"**
3. Add your custom domain
4. Update DNS settings as instructed

## 📊 **Benefits Over Hostinger**
- **No configuration issues** - Works out of the box
- **Better performance** - Global CDN
- **Automatic deployments** - Deploy on every git push
- **Better developer experience** - Built for modern web apps
- **Free SSL certificates** - No additional cost

## 🆘 **If You Need Help**
- Vercel has excellent documentation
- Community support is very active
- Built-in analytics and monitoring

## 🎉 **Success!**
Once deployed, you'll have a production-ready Vajrakaaya application accessible worldwide!
