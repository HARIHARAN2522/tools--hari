# Stage 1: Build Docusaurus site
FROM node:20-slim AS builder

WORKDIR /app

# Copy package files first (for layer caching)
COPY docusaurus-site/package*.json ./

# Install dependencies
RUN npm ci --only=production

# Copy entire Docusaurus site
COPY docusaurus-site/ .

# Build static site → outputs to /app/build
RUN npm run build

# Stage 2: Serve with NGINX
FROM nginx:alpine

# Remove default config
RUN rm -rf /etc/nginx/conf.d/default.conf

# Copy custom NGINX config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy built files from builder stage
COPY --from=builder /app/build /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]