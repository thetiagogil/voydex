#!/bin/bash

# Pokemon Tracker Database Setup Script
echo "🎮 Pokemon Tracker Database Setup"
echo "=================================="

# Check if .env.local exists
if [ ! -f .env.local ]; then
    echo "❌ .env.local not found"
    echo ""
    echo "📋 Setup Instructions:"
    echo "1. Copy .env.example to .env.local"
    echo "2. Add your Supabase project URL and service role key"
    echo "3. Run this script again"
    echo ""
    echo "Example:"
    echo "  cp .env.example .env.local"
    echo "  # Edit .env.local with your Supabase credentials"
    echo "  ./setup-db.sh"
    exit 1
fi

echo "✅ Found .env.local"

# Load environment variables
export $(cat .env.local | grep -v ^# | xargs)

# Check required environment variables
if [ -z "$NEXT_PUBLIC_SUPABASE_URL" ] || [ -z "$SUPABASE_SERVICE_ROLE_KEY" ]; then
    echo "❌ Missing required environment variables in .env.local"
    echo "Required: NEXT_PUBLIC_SUPABASE_URL, SUPABASE_SERVICE_ROLE_KEY"
    exit 1
fi

echo "✅ Environment variables loaded"

# Install dependencies if needed
if [ ! -d "node_modules" ]; then
    echo "📦 Installing dependencies..."
    npm install
fi

echo ""
echo "🚀 Starting database setup process..."

# Step 1: Run migrations
echo ""
echo "📊 Step 1: Running database migrations..."
npm run db:migrate

if [ $? -ne 0 ]; then
    echo "❌ Migration failed. Please check your Supabase configuration."
    exit 1
fi

# Step 2: Manual instruction for seed data
echo ""
echo "🎮 Step 2: Seed data setup..."
echo ""
echo "✅ Migrations completed successfully!"
echo ""
echo "📝 Next: Load the seed data in Supabase SQL Editor:"
echo "   1. Go to your Supabase project dashboard"
echo "   2. Navigate to SQL Editor"
echo "   3. Run these files in order:"
echo "      • database/seed/001_static_data_gen1.sql"
echo "      • database/seed/002_pokemon_gen1.sql"
echo "      • database/seed/003_moves_gen1.sql"
echo ""
echo "💡 Tip: You can copy/paste each file content into the SQL Editor"

echo ""
echo "🎉 Database migration setup complete!"
echo ""
echo "Next steps:"
echo "• Load seed data via Supabase SQL Editor (see above)"
echo "• Start the development server: npm run dev"
echo "• Visit your Pokemon tracker and create a playthrough"