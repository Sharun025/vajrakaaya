# Hostinger Deployment Guide for Vajrakaaya

## 🚨 **IMPORTANT: Manual Configuration Required**

Since Hostinger doesn't automatically detect Node.js projects, you need to manually configure the deployment settings.

## 📋 **Step-by-Step Configuration**

### **1. In Hostinger hPanel:**

**Go to:** `Websites` → `Your Domain` → `Git` → `Deploy`

### **2. Build Configuration:**
- **Build Command:** `npm run hostinger:build`
- **Output Directory:** `apps/web/.next`
- **Install Command:** `npm install`
- **Start Command:** `npm run hostinger:start`

### **3. Environment Variables:**
Add these in Hostinger's environment variables section:
```env
NODE_ENV=production
DATABASE_URL=file:./prisma/production.db
NEXTAUTH_URL=https://your-domain.com
NEXTAUTH_SECRET=your-super-secure-production-secret-key
```

### **4. Node.js Version:**
- Set Node.js version to **18.x** or higher

### **5. Alternative: Contact Hostinger Support**

If the above doesn't work, contact Hostinger support with this message:

```
"I have a Node.js/Next.js application that needs to be deployed. 
The repository is: https://github.com/Sharun025/vajrakaaya

Please configure my hosting for Node.js deployment with:
- Build command: npm run hostinger:build
- Output directory: apps/web/.next
- Start command: npm run hostinger:start
- Node.js version: 18.x
```

## 🔄 **After Configuration:**

1. **Deploy again** from Hostinger Git settings
2. **Monitor the deployment logs** for any errors
3. **Test the application** once deployed

## 📞 **Support Contact:**

If you continue having issues, contact Hostinger support and reference this guide.
