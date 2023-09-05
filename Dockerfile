# Step 1: Build the application
FROM golang:latest AS builder

WORKDIR /app
COPY . .

# Build the executable
RUN CGO_ENABLED=0 GOOS=linux go build -o main .

# Step 2: Create a minimal image
# https://klotzandrew.com/blog/smallest-golang-docker-image
FROM scratch

WORKDIR /app

# Copy the executable from the previous step
COPY --from=builder /app/main .

# Specify the port that the application will listen on
EXPOSE 8000

# Start the application
CMD ["./main"]