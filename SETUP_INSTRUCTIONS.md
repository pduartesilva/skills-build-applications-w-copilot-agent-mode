# OctoFit Tracker - Setup Instructions

Welcome to the OctoFit Tracker project! This document provides comprehensive setup instructions for getting the application up and running on your local machine or in a GitHub Codespace.

## 📋 Table of Contents

1. [Project Overview](#project-overview)
2. [Technology Stack](#technology-stack)
3. [Prerequisites](#prerequisites)
4. [Initial Setup](#initial-setup)
5. [Project Structure](#project-structure)
6. [Common Django Commands](#common-django-commands)
7. [Troubleshooting](#troubleshooting)
8. [GitHub Copilot Resources](#github-copilot-resources)
9. [Next Steps](#next-steps)

## 📱 Project Overview

**OctoFit Tracker** is a fitness tracking application designed for Mergington High School, built with the assistance of GitHub Copilot agent mode. It features:

- User profile management
- Activity logging and tracking (running, walking, strength training)
- Team creation and management
- Competitive leaderboards
- Personalized workout suggestions
- Achievement badges and gamification elements
- Real-time progress monitoring for educators

## 🛠️ Technology Stack

| Component | Technology | Version |
|-----------|-----------|---------|
| **Frontend** | React.js | Latest |
| **Backend** | Python Django | 4.2.11 |
| **API** | Django REST Framework | 3.14.0 |
| **Database** | MongoDB | Latest |
| **ORM** | Djongo | 1.3.6 |
| **Authentication** | Django Allauth | 0.51.0 |
| **Server** | Gunicorn | 21.2.0 |
| **Environment** | GitHub Codespaces or Local |

## ✅ Prerequisites

Before you begin, ensure you have the following installed:

### Local Development
- **Python 3.8+** - [Download](https://www.python.org/downloads/)
- **MongoDB** - [Download](https://www.mongodb.com/try/download/community)
- **Git** - [Download](https://git-scm.com/downloads)
- **Node.js** (for frontend) - [Download](https://nodejs.org/)

### GitHub Codespaces
- GitHub account with Codespaces enabled
- GitHub Copilot subscription (recommended)

## 🚀 Initial Setup

### Option 1: Using Setup Scripts (macOS/Linux)

1. **Clone the repository**
   ```bash
   git clone https://github.com/pduartesilva/skills-build-applications-w-copilot-agent-mode.git
   cd skills-build-applications-w-copilot-agent-mode
   ```

2. **Make scripts executable**
   ```bash
   chmod +x setup_venv.sh install_requirements.sh
   ```

3. **Create and activate virtual environment**
   ```bash
   ./setup_venv.sh
   source venv/bin/activate
   ```

4. **Install dependencies**
   ```bash
   ./install_requirements.sh
   ```

### Option 2: Manual Setup (All Platforms)

1. **Clone the repository**
   ```bash
   git clone https://github.com/pduartesilva/skills-build-applications-w-copilot-agent-mode.git
   cd skills-build-applications-w-copilot-agent-mode
   ```

2. **Create virtual environment**
   
   **macOS/Linux:**
   ```bash
   python3 -m venv venv
   source venv/bin/activate
   ```
   
   **Windows:**
   ```bash
   python -m venv venv
   venv\Scripts\activate
   ```

3. **Upgrade pip**
   ```bash
   pip install --upgrade pip
   ```

4. **Install root requirements**
   ```bash
   pip install -r requirements.txt
   ```

5. **Install backend requirements**
   ```bash
   pip install -r octofit-tracker/backend/requirements.txt
   ```

### Option 3: Using GitHub Codespaces

1. Click "Code" button on the repository
2. Select "Codespaces" tab
3. Click "Create codespace on main"
4. Wait for the environment to initialize
5. In the terminal, run:
   ```bash
   chmod +x setup_venv.sh install_requirements.sh
   ./setup_venv.sh
   source venv/bin/activate
   ./install_requirements.sh
   ```

## 📁 Project Structure

```
skills-build-applications-w-copilot-agent-mode/
├── octofit-tracker/                          # Main application
│   └── backend/                              # Django backend
│       ├── requirements.txt                  # Backend dependencies
│       ├── manage.py                         # Django management script
│       └── octofit_api/                      # API application
│           ├── models.py                     # Database models
│           ├── serializers.py                # API serializers
│           ├── views.py                      # API views
│           ├── urls.py                       # URL routing
│           └── ...
├── requirements.txt                          # Root dependencies
├── setup_venv.sh                             # Virtual environment setup
├── install_requirements.sh                   # Requirements installation
├── docs/                                     # Documentation
│   ├── octofit_story.md                      # Project background
│   └── octofitapp-small.png                  # UI mockup
├── .github/                                  # GitHub configuration
├── .vscode/                                  # VS Code settings
├── .devcontainer/                            # Dev container config
└── README.md                                 # Project README
```

## 🔧 Common Django Commands

Once your environment is set up, use these commands:

```bash
# Navigate to backend directory
cd octofit-tracker/backend

# Run migrations
python manage.py migrate

# Create a superuser (admin account)
python manage.py createsuperuser

# Start the development server
python manage.py runserver

# Create an app
python manage.py startapp app_name

# Make migrations for model changes
python manage.py makemigrations

# Run tests
python manage.py test

# Collect static files
python manage.py collectstatic

# Open Django shell
python manage.py shell
```

## 🆘 Troubleshooting

### Virtual Environment Not Activating

**Problem:** `source venv/bin/activate` doesn't work

**Solution:**
- macOS/Linux: Ensure you're in the project root directory
- Windows: Use `venv\Scripts\activate` instead
- If still failing, delete `venv/` and recreate: `python3 -m venv venv`

### pip: command not found

**Problem:** pip is not recognized

**Solution:**
```bash
# Try using pip3
pip3 install --upgrade pip

# Or use Python module syntax
python -m pip install --upgrade pip
```

### Module Import Errors

**Problem:** `ModuleNotFoundError: No module named 'django'`

**Solution:**
1. Verify virtual environment is activated: `echo $VIRTUAL_ENV`
2. Reinstall requirements: `pip install -r requirements.txt`
3. Check Python version: `python --version` (should be 3.8+)

### MongoDB Connection Issues

**Problem:** Cannot connect to MongoDB

**Solution:**
1. Ensure MongoDB is running locally: `brew services list` (macOS)
2. Check connection string in `.env` file
3. Verify MongoDB port (default: 27017)
4. Install MongoDB if missing: [Installation Guide](https://docs.mongodb.com/manual/installation/)

### Port Already in Use

**Problem:** `Address already in use` when running Django server

**Solution:**
```bash
# Run on different port
python manage.py runserver 8001

# Or kill process using port 8000
# macOS/Linux:
lsof -ti:8000 | xargs kill -9

# Windows:
netstat -ano | findstr :8000
taskkill /PID <PID> /F
```

### Git Command Not Found in Codespaces

**Problem:** Git operations fail in Codespaces

**Solution:** Git is pre-installed in Codespaces. Try:
```bash
which git  # Check if git is available
git --version  # Verify installation
```

## 📚 GitHub Copilot Resources

### Getting Started
- [Getting started with GitHub Copilot Chat](https://docs.github.com/en/copilot/how-tos/use-chat/get-started-with-chat?tool=vscode)
- [Use Chat in the IDE](https://docs.github.com/en/copilot/how-tos/use-chat/use-chat-in-ide?tool=vscode)

### AI Models
- [Supported AI models in GitHub Copilot](https://docs.github.com/en/copilot/reference/ai-models/supported-models)
- [AI model comparison](https://docs.github.com/en/copilot/reference/ai-models/model-comparison)
- [Changing the AI model for Copilot Chat](https://docs.github.com/en/copilot/how-tos/use-ai-models/change-the-chat-model?tool=vscode)

### Prompt Engineering
- [Prompt engineering for GitHub Copilot Chat](https://docs.github.com/en/copilot/concepts/prompt-engineering)
- [How to use GitHub Copilot: Prompts, tips, and use cases](https://github.blog/2023-06-20-how-to-write-better-prompts-for-github-copilot/)
- [Using GitHub Copilot in your IDE: Tips, tricks, and best practices](https://github.blog/2024-03-25-how-to-use-github-copilot-in-your-ide-tips-tricks-and-best-practices/)

## 🎯 Next Steps

After completing the setup:

1. **Configure Environment Variables**
   ```bash
   cp .env.example .env  # If available
   # Edit .env with your MongoDB connection and other settings
   ```

2. **Set Up the Database**
   ```bash
   cd octofit-tracker/backend
   python manage.py migrate
   python manage.py createsuperuser
   ```

3. **Test the API**
   ```bash
   python manage.py runserver
   # Visit http://localhost:8000/admin
   ```

4. **Build Core Features**
   - User authentication
   - Activity logging
   - Team management
   - Leaderboard functionality
   - Personalized recommendations

5. **Set Up Frontend** (when ready)
   ```bash
   # Navigate to frontend directory
   cd octofit-tracker/frontend
   npm install
   npm start
   ```

6. **Use GitHub Copilot**
   - Open GitHub Copilot Chat in VS Code
   - Ask for help implementing features
   - Use agent mode for complex tasks
   - Reference this documentation in your prompts

## 📞 Support

For issues or questions:
1. Check this troubleshooting guide
2. Review the [OctoFit Story](./docs/octofit_story.md) for project context
3. Consult GitHub Copilot Chat for code-related questions
4. Check Django documentation: https://docs.djangoproject.com/
5. MongoDB documentation: https://docs.mongodb.com/

## 📄 License

This project is licensed under the MIT License. See [LICENSE](../LICENSE) file for details.

---

**Happy coding with GitHub Copilot! 🚀**
