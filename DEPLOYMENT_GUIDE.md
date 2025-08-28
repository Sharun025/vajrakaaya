# 🚀 **Vajrakaaya Deployment Guide - Hostinger**

## 📋 **Prerequisites**

1. **Hostinger Account** - Sign up at [hostinger.com](https://hostinger.com)
2. **Domain Name** - Purchase or use a subdomain
3. **GitHub Account** - For code repository
4. **Node.js Knowledge** - Basic understanding

## 🔧 **Step 1: Prepare Your Application**

### **1.1 Create Production Environment File**
Create `apps/web/.env.production` with:
```env
DATABASE_URL="file:./prisma/production.db"
NEXTAUTH_URL="https://your-domain.com"
NEXTAUTH_SECRET="your-production-secret-key-here"
```

### **1.2 Update Next.js Config for Production**
Ensure `apps/web/next.config.js` has:
```javascript
/** @type {import('next').NextConfig} */
const nextConfig = {
  output: 'standalone',
  images: {
    domains: ['your-domain.com'],
  },
  env: {
    CUSTOM_KEY: "vajrakaaya-custom-key",
  },
}

module.exports = nextConfig
```

## 🌐 **Step 2: Hostinger Setup**

### **2.1 Purchase Hosting Plan**
1. Go to [hostinger.com](https://hostinger.com)
2. Choose **Premium Web Hosting** or **Business Web Hosting**
3. Select your domain
4. Complete the purchase

### **2.2 Access Hostinger Control Panel**
1. Login to your Hostinger account
2. Go to **Hosting** → **Manage**
3. Access **hPanel** (Hostinger Control Panel)

## 📦 **Step 3: Deploy Using Git**

### **3.1 Push Code to GitHub**
```bash
# Initialize git repository
git init
git add .
git commit -m "Initial commit for deployment"

# Create GitHub repository and push
git remote add origin https://github.com/yourusername/vajrakaaya.git
git push -u origin main
```

### **3.2 Connect GitHub to Hostinger**
1. In hPanel, go to **Git** section
2. Click **Connect Repository**
3. Connect your GitHub account
4. Select your `vajrakaaya` repository
5. Set branch to `main`

### **3.3 Configure Build Settings**
In Hostinger Git settings:
- **Build Command**: `npm run build`
- **Output Directory**: `apps/web/.next`
- **Node.js Version**: 18.x or 20.x
- **Install Command**: `npm install`

## ⚙️ **Step 4: Environment Configuration**

### **4.1 Set Environment Variables**
In Hostinger hPanel:
1. Go to **Environment Variables**
2. Add the following variables:

```env
DATABASE_URL=file:./prisma/production.db
NEXTAUTH_URL=https://your-domain.com
NEXTAUTH_SECRET=your-super-secure-production-secret-key
NODE_ENV=production
```

### **4.2 Update Domain Settings**
1. Go to **Domains** in hPanel
2. Point your domain to the hosting
3. Update `NEXTAUTH_URL` to match your domain

## 🔄 **Step 5: Deploy and Test**

### **5.1 Trigger Deployment**
1. In Git settings, click **Deploy**
2. Wait for build to complete (5-10 minutes)
3. Check deployment logs for any errors

### **5.2 Test Your Application**
1. Visit your domain: `https://your-domain.com`
2. Test the login functionality
3. Navigate through all pages
4. Test all button functionalities

## 🛠️ **Step 6: Database Setup**

### **6.1 SQLite Database (Recommended for Testing)**
The application uses SQLite which is perfect for testing:
- No additional database setup required
- Database file is created automatically
- Data persists between deployments

### **6.2 MySQL Database (For Production)**
If you want to use MySQL:
1. Create MySQL database in hPanel
2. Update `DATABASE_URL` to MySQL connection string
3. Run database migrations

## 🔒 **Step 7: Security Configuration**

### **7.1 SSL Certificate**
1. Hostinger provides free SSL certificates
2. Enable SSL in **SSL** section of hPanel
3. Force HTTPS redirect

### **7.2 Security Headers**
Add to `next.config.js`:
```javascript
const nextConfig = {
  async headers() {
    return [
      {
        source: '/(.*)',
        headers: [
          {
            key: 'X-Frame-Options',
            value: 'DENY',
          },
          {
            key: 'X-Content-Type-Options',
            value: 'nosniff',
          },
        ],
      },
    ]
  },
}
```

## 📊 **Step 8: Monitoring and Maintenance**

### **8.1 Performance Monitoring**
- Use Hostinger's built-in monitoring
- Check application logs regularly
- Monitor database size

### **8.2 Regular Updates**
- Keep dependencies updated
- Monitor for security patches
- Backup database regularly

## 🚨 **Troubleshooting**

### **Common Issues:**

#### **1. Build Failures**
- Check Node.js version compatibility
- Verify all dependencies are installed
- Check environment variables

#### **2. Authentication Issues**
- Verify `NEXTAUTH_URL` matches your domain
- Check `NEXTAUTH_SECRET` is set correctly
- Ensure HTTPS is enabled

#### **3. Database Issues**
- Check `DATABASE_URL` format
- Ensure write permissions for SQLite
- Verify database migrations

#### **4. 404 Errors**
- Check routing configuration
- Verify file paths are correct
- Check Next.js configuration

## 📞 **Support**

### **Hostinger Support**
- Live Chat: Available 24/7
- Knowledge Base: Extensive documentation
- Ticket System: For complex issues

### **Application Support**
- Check deployment logs
- Review error messages
- Test locally first

## 🎉 **Success Checklist**

- [ ] Application builds successfully
- [ ] Domain is accessible
- [ ] Login functionality works
- [ ] All pages load correctly
- [ ] All buttons are functional
- [ ] SSL certificate is active
- [ ] Environment variables are set
- [ ] Database is working
- [ ] Performance is acceptable

## 🔗 **Useful Links**

- [Hostinger Documentation](https://www.hostinger.com/help)
- [Next.js Deployment Guide](https://nextjs.org/docs/deployment)
- [NextAuth.js Documentation](https://next-auth.js.org/)
- [Prisma Documentation](https://www.prisma.io/docs/)

---

**Your Vajrakaaya application should now be live and accessible for testing!** 🚀

**Access your deployed application at**: `https://your-domain.com`
