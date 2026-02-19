FROM oven/bun:1

WORKDIR /app

# Install deps first (better layer caching)
COPY bun.lock package.json ./
RUN bun install --frozen-lockfile

# Copy the rest
COPY . .

# Railway will set PORT, we just expose for clarity
EXPOSE 3000

CMD ["bun", "src/index.ts"]