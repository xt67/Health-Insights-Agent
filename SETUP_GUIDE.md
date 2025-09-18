# 🚀 Personal Setup Guide for MyHealthAI

This guide will help you customize and set up your own version of the Health Insights Agent.

## 📝 Step 1: Customize App Branding

Edit the following files to personalize your app:

### `src/config/app_config.py`
- Change `APP_NAME` to your preferred app name
- Update `APP_DESCRIPTION` with your own description
- Modify `APP_TAGLINE` to reflect your vision
- Choose your preferred `APP_ICON` emoji
- Customize `PRIMARY_COLOR` and `SECONDARY_COLOR` for your theme

### `src/main.py`
- Update the `page_title` in `st.set_page_config()`
- Change the `page_icon` to match your branding

## 🔑 Step 2: Set Up Your Own API Keys

### Supabase Database Setup
1. Go to [https://supabase.com](https://supabase.com)
2. Create a new account and project
3. Go to Settings > API
4. Copy your Project URL and anon key
5. Update `.streamlit/secrets.toml` with your credentials

### Groq API Setup
1. Go to [https://console.groq.com](https://console.groq.com)
2. Create an account
3. Generate an API key
4. Add it to your `.streamlit/secrets.toml`

## 🗄️ Step 3: Database Schema Setup

Run the SQL script in `public/db/script.sql` in your Supabase SQL editor to create the required tables.

## 🎨 Step 4: Customize UI (Optional)

- Modify colors in `app_config.py`
- Update styling in component files under `src/components/`
- Change prompts in `src/config/prompts.py`

## 📁 Step 5: Repository Setup

- Update README.md with your information
- Change GitHub links and author credits
- Update LICENSE if needed

## 🧪 Step 6: Test Your Setup

Run the application and test all features:
```bash
streamlit run src/main.py
```

## 🛡️ Security Notes

- Never commit your actual API keys to version control
- Keep your `.streamlit/secrets.toml` file private
- Use environment variables for production deployment

## 📞 Support

If you encounter issues:
1. Check the terminal output for error messages
2. Verify your API keys are correct
3. Ensure your Supabase database schema is properly set up
4. Check that all required Python packages are installed