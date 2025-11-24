# Complete Setup Guide for Other Laptop

Follow these steps to set up the project on a new machine with a proper virtual environment.

## Prerequisites

- Python 3.8 or higher
- Git (to pull the repository)
- OpenAI API key (get from https://platform.openai.com/api-keys)

## Step-by-Step Setup

### Option A: Automated Setup (Recommended!)

```bash
cd ~/Projects  # or wherever you want to store the project
git clone <your-repository-url>
cd safety_report_IB_populated

# Run the setup script
chmod +x setup_with_venv.sh
./setup_with_venv.sh

# Edit the .env file with your API key
nano .env
```

The script automatically handles:
- ✅ Virtual environment creation
- ✅ Dependency installation
- ✅ Directory structure
- ✅ Environment file creation
- ✅ Installation testing

**That's it! Skip to "Daily Usage" section below.**

---

### Option B: Manual Setup (Step-by-Step)

If you prefer to do it manually or the script doesn't work:

#### 1. Clone the Repository

```bash
cd ~/Projects  # or wherever you want to store the project
git clone <your-repository-url>
cd safety_report_IB_populated
```

#### 2. Create a Virtual Environment

**For macOS/Linux:**
```bash
python3 -m venv venv
```

**For Windows:**
```bash
python -m venv venv
```

This creates a `venv` folder containing an isolated Python environment.

### 3. Activate the Virtual Environment

**For macOS/Linux:**
```bash
source venv/bin/activate
```

**For Windows (Command Prompt):**
```bash
venv\Scripts\activate.bat
```

**For Windows (PowerShell):**
```bash
venv\Scripts\Activate.ps1
```

You should see `(venv)` appear at the beginning of your terminal prompt.

### 4. Install Dependencies

With the virtual environment activated:

```bash
pip install --upgrade pip
pip install -r requirements.txt
```

This will install:
- PyPDF2, pdfplumber, pymupdf (for PDF processing)
- python-docx (for Word documents)
- openai (for AI processing)
- pandas, numpy (for data processing)
- python-dotenv, pyyaml, tqdm (utilities)

### 5. Create Necessary Directories

```bash
mkdir -p data/input/ib_pdf data/input/dsr_template data/input/mapping
mkdir -p data/intermediate
mkdir -p data/output
mkdir -p tests
```

Or run the setup script:
```bash
chmod +x setup.sh
./setup.sh
```

### 6. Configure Environment Variables

Create a `.env` file with your OpenAI API key:

```bash
cp env_template.txt .env
```

Then edit `.env` and add your actual API key:

```bash
# Open in your editor (nano, vim, or VSCode)
nano .env
```

Replace `sk-your-api-key-here` with your actual OpenAI API key.

**⚠️ IMPORTANT:** Never commit the `.env` file to Git! (It's already in `.gitignore`)

### 7. Verify Installation

Test that everything is working:

```bash
python test_system.py
```

This will verify:
- All dependencies are installed
- API key is configured
- Modules can be imported correctly

### 8. Run the Pipeline

```bash
python main.py \
  --ib-pdf investigative_brochure.pdf \
  --template Drug_Safety_Report_Template.docx \
  --mapping IB_to_DSR_Manual_Mapping.md \
  --output data/output/DSR_Populated.docx
```

## Daily Usage

Every time you work on the project, remember to activate the virtual environment first:

**macOS/Linux:**
```bash
cd ~/Projects/safety_report_IB_populated
source venv/bin/activate
```

**Windows:**
```bash
cd C:\Projects\safety_report_IB_populated
venv\Scripts\activate
```

To deactivate the virtual environment when you're done:

```bash
deactivate
```

## Troubleshooting

### "python3: command not found" (macOS/Linux)
- Use `python` instead of `python3`
- Or install Python 3: `brew install python3` (macOS with Homebrew)

### "pip: command not found"
- Try `python -m pip install -r requirements.txt`

### Virtual environment activation not working (Windows PowerShell)
- Run: `Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser`
- Then try activating again

### "No module named 'openai'"
- Make sure virtual environment is activated (you should see `(venv)` in prompt)
- Run: `pip install -r requirements.txt` again

### API Key Issues
- Verify your `.env` file exists: `ls -la .env`
- Check the key format: `cat .env` (should start with `sk-`)
- Get a new key from: https://platform.openai.com/api-keys

## What Gets Installed Where

- **Virtual Environment**: `venv/` directory (not committed to Git)
- **Environment Variables**: `.env` file (not committed to Git)
- **Dependencies**: Inside `venv/lib/python3.x/site-packages/`
- **Output Files**: `data/output/` directory

## Git Workflow

When pulling updates from another machine:

```bash
git pull origin main
pip install -r requirements.txt  # In case dependencies were updated
```

Your `.env` file and `venv/` folder won't be pulled (they're in `.gitignore`), so you'll need to:
- Set up the virtual environment again (steps 2-4)
- Create a new `.env` file with your API key (step 6)

## Cost Estimate

- **~$2-5 USD per complete DSR** with GPT-4 Turbo
- Use `gpt-3.5-turbo` for 10x cheaper processing (edit `.env`)

## Quick Reference

```bash
# Activate venv
source venv/bin/activate  # macOS/Linux
venv\Scripts\activate     # Windows

# Run pipeline
python main.py --ib-pdf <pdf> --template <docx> --mapping <md> --output <output>

# Run tests
python test_system.py

# Deactivate venv
deactivate
```

## Additional Documentation

- **QUICKSTART.md** - Quick start without venv details
- **README_AUTOMATION.md** - Detailed architecture and API docs
- **IB_to_DSR_Manual_Mapping.md** - Field mapping documentation
- **PROJECT_SUMMARY.md** - Project overview

---

**Need Help?** Check the troubleshooting section above or review `QUICKSTART.md` for more details.

