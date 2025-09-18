# 🩺 MyHealthAI

Your Personal AI Health Assistant powered by advanced AI models.

<p align="center">
  <a href="#-features">Features</a> |
  <a href="#%EF%B8%8F-tech-stack">Tech Stack</a> |
  <a href="#-installation">Installation</a> |
  <a href="#-contributing">Contributing</a> |
  <a href="#%EF%B8%8F-author">Author</a>
</p>

## 🌟 Features

- Intelligent AI-powered health analysis with multi-model support
- Medical report analysis with personalized health insights  
- PDF upload, validation and text extraction (up to 20MB)
- Secure user authentication and session management
- Session history with analysis tracking
- Modern, responsive UI with real-time feedback
- Customizable branding and color themes

## 🛠️ Tech Stack

- **Frontend Framework**: Streamlit
- **AI Integration**: Multi-model architecture via Groq
  - Primary: meta-llama/llama-4-maverick-17b-128e-instruct
  - Secondary: llama-3.3-70b-versatile
  - Tertiary: llama-3.1-8b-instant
  - Fallback: llama3-70b-8192
- **Database**: Supabase
- **PDF Processing**: PDFPlumber
- **Authentication**: Supabase Auth

## 🚀 Installation

#### Requirements 📋

- Python 3.8+
- Streamlit 1.30.0+
- Supabase account
- Groq API key
- PDFPlumber
- Python-magic-bin (Windows) or Python-magic (Linux/Mac)

#### Getting Started 📝

1. Clone the repository:

```bash
git clone https://github.com/xt67/MyHealthAI.git
cd MyHealthAI
```

2. Install dependencies:

```bash
pip install -r requirements.txt
```

3. Required environment variables (in `.streamlit/secrets.toml`):

```toml
SUPABASE_URL = "your-supabase-url"
SUPABASE_KEY = "your-supabase-key"
GROQ_API_KEY = "your-groq-api-key"
```

**💡 Get your API keys:**
- **Supabase**: Create account at [supabase.com](https://supabase.com) → Settings → API
- **Groq**: Create account at [console.groq.com](https://console.groq.com) → API Keys

4. Set up your Supabase database:

Run the SQL script `my_database_setup.sql` in your Supabase SQL editor to create the required tables.

5. Customize your app (optional):

Edit `src/config/app_config.py` to change:
- App name and description
- Color scheme and branding
- Upload limits and settings

6. Run the application:

```bash
streamlit run src\main.py
```

## 🎨 Customization

This project is designed to be easily customizable:

- **Branding**: Edit `src/config/app_config.py` to change app name, colors, and settings
- **Styling**: Modify component files in `src/components/` for UI changes  
- **API Keys**: Use your own Supabase and Groq accounts for full control
- **Database**: Your own Supabase instance with custom schema if needed

See `SETUP_GUIDE.md` for detailed customization instructions.

## 📁 Project Structure

```
MyHealthAI/
├── requirements.txt
├── README.md
├── SETUP_GUIDE.md            # Setup instructions
├── PROJECT_SUMMARY.md        # Project overview
├── my_database_setup.sql     # Database schema
├── .streamlit/
│   ├── secrets.toml          # Your API keys
│   └── config.toml           # App configuration
├── src/
│   ├── main.py                 # Application entry point
│   ├── auth/                   # Authentication related modules
│   │   ├── auth_service.py     # Supabase auth integration
│   │   └── session_manager.py  # Session management
│   ├── components/             # UI Components
│   │   ├── analysis_form.py    # Report analysis form
│   │   ├── auth_pages.py       # Login/Signup pages
│   │   ├── footer.py          # Footer component
│   │   └── sidebar.py         # Sidebar navigation
│   ├── config/                # Configuration files
│   │   ├── app_config.py      # App settings & branding
│   │   └── prompts.py         # AI prompts
│   ├── services/              # Service integrations
│   │   └── ai_service.py      # AI service integration
│   ├── agents/                # Agent-based architecture components
│   │   ├── analysis_agent.py  # Analysis logic
│   │   └── model_manager.py   # Model management
│   └── utils/                 # Utility functions
│       ├── validators.py      # Input validation
│       └── pdf_extractor.py   # PDF processing
```

## 👥 Contributing

Contributions are welcome! Feel free to:

- Report bugs and issues
- Suggest new features  
- Improve documentation
- Submit pull requests

Please ensure your code follows the existing style and includes appropriate tests.

## 🙋‍♂️ Author

Created and maintained by **Rayan Rahman** 

---

**MyHealthAI** - Your Personal AI Health Assistant 🩺