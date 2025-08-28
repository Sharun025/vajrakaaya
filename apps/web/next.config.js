/** @type {import('next').NextConfig} */
const nextConfig = {
  images: {
    domains: ['localhost'],
  },
  env: {
    CUSTOM_KEY: "vajrakaaya-custom-key",
  },
  output: 'standalone',
}

module.exports = nextConfig
