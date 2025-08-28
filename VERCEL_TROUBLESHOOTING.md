# Vercel Deployment Troubleshooting

## 🚨 **Server-Side Error Fix**

If you're getting "Application error: a server-side exception has occurred", follow these steps:

### **Step 1: Check Environment Variables**

In your Vercel dashboard:
1. Go to **Project Settings** → **Environment Variables**
2. Add these variables:

```env
NODE_ENV=production
NEXTAUTH_URL=https://your-app-name.vercel.app
NEXTAUTH_SECRET=your-super-secure-production-secret-key-here
DATABASE_URL=file:./prisma/production.db
```

### **Step 2: Redeploy After Environment Variables**

1. Go to **Deployments** tab
2. Click **"Redeploy"** on your latest deployment
3. Wait for the build to complete

### **Step 3: Check Build Logs**

If still failing:
1. Go to **Deployments** → **Latest Deployment**
2. Click **"View Build Logs"**
3. Look for specific error messages

### **Step 4: Common Issues & Solutions**

#### **Issue: Missing NEXTAUTH_SECRET**
**Solution:** Add a strong secret key in environment variables

#### **Issue: Wrong NEXTAUTH_URL**
**Solution:** Make sure it matches your Vercel domain exactly

#### **Issue: Database Connection**
**Solution:** For demo purposes, we're using file-based SQLite which works on Vercel

### **Step 5: Test the Application**

After fixing environment variables:
1. Visit your Vercel URL
2. Try logging in with: `admin@vajrakaaya.com` / `admin123`
3. Navigate through the dashboard

### **Step 6: If Still Having Issues**

1. **Check Vercel Function Logs:**
   - Go to **Functions** tab in Vercel dashboard
   - Look for any error logs

2. **Verify Build Output:**
   - Make sure the build completes successfully
   - Check that `.next` directory is generated

3. **Contact Support:**
   - Vercel has excellent support
   - Share the specific error logs

## 🔧 **Quick Fix Commands**

If you need to update the deployment:

```bash
# Push latest changes
git add .
git commit -m "Fix Vercel deployment issues"
git push origin master

# Vercel will automatically redeploy
```

## 📞 **Need Help?**

- **Vercel Documentation:** https://vercel.com/docs
- **Vercel Support:** Available in dashboard
- **Community:** https://github.com/vercel/vercel/discussions
