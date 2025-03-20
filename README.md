# Asset Tokenization Platform

A comprehensive blockchain investment platform that simplifies asset tokenization and investment for users of all experience levels.

## Features

- User authentication with phone number verification
- KYC (Know Your Customer) verification
- Asset tokenization and management
- Real-time portfolio tracking
- Secure transaction processing
- Wallet integration
- Mobile-responsive design

## Prerequisites

Before you begin, ensure you have:

1. A Replit account (sign up at [replit.com](https://replit.com))
2. A Stripe account for payment processing (sign up at [stripe.com](https://stripe.com))
3. PostgreSQL database (automatically provided by Replit)

## Installation Steps

### 1. Fork the Project

1. Visit the project page on Replit
2. Click the "Fork" button
3. Wait for the project to be copied to your account

### 2. Set Up Environment Variables

1. In your forked project, click on "Tools" in the left sidebar
2. Select "Secrets"
3. Add the following secrets (one by one):

   - `SESSION_SECRET`: Generate a random string (at least 32 characters)
   - `STRIPE_SECRET_KEY`: Copy from your Stripe Dashboard
   - `VITE_STRIPE_PUBLIC_KEY`: Copy from your Stripe Dashboard

   Note: Database credentials (PGHOST, PGPORT, etc.) are automatically provided by Replit

### 3. Start the Application

1. Click the "Run" button at the top of the screen
2. Wait for the installation process to complete
3. Your application will be available at the URL shown in the "Webview" tab

## Usage Guide

### Admin Setup

1. Register your first account
2. Access the PostgreSQL database through Replit's Database tab
3. Update your user record to set `isAdmin = true`

### User Registration

1. Users can register with:
   - Username
   - Password
   - Phone number (with country code)
2. Complete KYC verification
3. Connect a wallet to start trading

### Asset Management

1. Admins can:
   - Create new assets
   - Manage token distribution
   - Monitor transactions
2. Users can:
   - View available assets
   - Purchase tokens
   - Track portfolio performance

## Troubleshooting

Common issues and solutions:

1. **Database Connection Issues**
   - Verify that the application is running
   - Check database credentials in environment variables
   - Look for error messages in the console logs

2. **Payment Processing Issues**
   - Verify Stripe API keys
   - Ensure you're using test mode keys for development
   - Check transaction logs in Stripe Dashboard

3. **Session Issues**
   - Clear browser cookies
   - Verify SESSION_SECRET is set
   - Check for error messages in console

## Support

If you encounter any issues:

1. Check the console logs in the "Console" tab
2. Review the troubleshooting section above
3. Contact Replit support for platform-specific issues

## Security Notes

1. Never share your environment variables
2. Keep your SESSION_SECRET secure
3. Use strong passwords for admin accounts
4. Regularly monitor transaction logs
5. Keep your Stripe API keys confidential

## Updates and Maintenance

1. Regularly check for package updates
2. Monitor database performance
3. Keep backups of important data
4. Review security settings periodically

## License

This project is licensed under the MIT License - see the LICENSE file for details.