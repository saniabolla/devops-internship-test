FROM golang:latest

# Create the working directory
WORKDIR /app

# Copy the Go dependencies
COPY go.mod .
COPY go.sum .

# Download the dependencies
RUN go mod download

# Copy the source code
COPY *.go .

# Build the Go program
RUN go build -o /docker-adobe

# Expose port 8080
EXPOSE 8080

# Run the Go program
CMD ["/docker-adobe"]
