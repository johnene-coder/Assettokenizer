#!/bin/bash

# Text colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${GREEN}🚀 Starting Asset Tokenization Platform Setup...${NC}"

# Check if npm is installed
if ! command -v npm &> /dev/null; then
    echo -e "${RED}❌ npm is not installed. Please install Node.js and npm first.${NC}"
    echo "Visit https://nodejs.org to download and install Node.js"
    exit 1
fi

# Create .env file if it doesn't exist
if [ ! -f .env ]; then
    echo -e "${YELLOW}📝 Creating .env file from template...${NC}"
    cp .env.example .env
    echo -e "${YELLOW}⚠️  Important: Please update the .env file with your actual credentials before continuing${NC}"
    echo "Press any key to continue after updating your .env file..."
    read -n 1 -s
fi

# Install dependencies
echo -e "${GREEN}📦 Installing dependencies...${NC}"
if ! npm install; then
    echo -e "${RED}❌ Failed to install dependencies. Please check your internet connection and try again.${NC}"
    exit 1
fi

# Database setup
echo -e "${GREEN}🗄️  Setting up database...${NC}"
if ! npm run db:push; then
    echo -e "${RED}❌ Database setup failed. Please check your database credentials in .env file.${NC}"
    exit 1
fi

echo -e "${GREEN}✅ Setup completed successfully!${NC}"
echo ""
echo -e "${YELLOW}Next steps:${NC}"
echo "1. If you haven't already, update your .env file with actual credentials"
echo "2. Run 'npm run dev' to start the development server"
echo "3. Visit http://localhost:5000 in your browser"
echo ""
echo "For more information, please read the README.md file"
echo -e "${YELLOW}Need help? Check the troubleshooting section in README.md${NC}"