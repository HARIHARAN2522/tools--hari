# Stage 1: Build the Docusaurus site
FROM node:18-slim AS builder

WORKDIR /app

# Copy package files first (to leverage Docker layer caching)
COPY package*.json ./

# Install only production dependencies (faster, smaller image)
RUN npm ci --only=production

# Copy all source code (including docusaurus.config.js, docs/, etc.)
COPY . .

# Build the static site → outputs to /app/build
RUN npm run build

# Stage 2: Serve the built site with NGINX
FROM nginx:alpine

# Remove default NGINX config
RUN rm -rf /etc/nginx/conf.d/default.conf

# Copy custom NGINX config (optional, but recommended for clean setup)
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy the built static files from the builder stage
COPY --from=builder /app/build /usr/share/nginx/html

# Expose port 80 (default HTTP port)
EXPOSE 80

# Start NGINX in foreground mode
CMD ["nginx", "-g", "daemon off;"]
