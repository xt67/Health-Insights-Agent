-- Database Setup Script for MyHealthAI
-- Run this script in your Supabase SQL Editor after creating your project

-- Enable Row Level Security (RLS) for better security
-- This will be set up automatically by Supabase Auth

-- Create users table
CREATE TABLE users (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    email TEXT NOT NULL,
    name TEXT,
    created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
);

-- Create chat_sessions table
CREATE TABLE chat_sessions (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL,
    title TEXT,
    created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Create chat_messages table
CREATE TABLE chat_messages (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    session_id UUID NOT NULL,
    content TEXT,
    role TEXT,
    created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (session_id) REFERENCES chat_sessions(id)
);

-- Add indexes to improve query performance
CREATE INDEX idx_chat_sessions_user_id ON chat_sessions(user_id);
CREATE INDEX idx_chat_messages_session_id ON chat_messages(session_id);
CREATE INDEX idx_users_email ON users(email);

-- Add unique constraint to prevent duplicate emails
ALTER TABLE users ADD CONSTRAINT unique_email UNIQUE (email);

-- Optional: Add some sample data for testing (remove in production)
-- INSERT INTO users (email, name) VALUES ('test@example.com', 'Test User');

-- Verify tables were created
SELECT table_name 
FROM information_schema.tables 
WHERE table_schema = 'public' 
AND table_name IN ('users', 'chat_sessions', 'chat_messages');

-- Success message
SELECT 'Database schema created successfully! You can now use your MyHealthAI app.' as setup_status;