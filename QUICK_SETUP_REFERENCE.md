# Quick Setup Reference Card

## 🚀 First Time Setup on New Laptop

### ONE-COMMAND SETUP (Easiest!)

```bash
# 1. Clone repository
git clone <your-repo-url>
cd safety_report_IB_populated

# 2. Run setup script (does everything!)
chmod +x setup_with_venv.sh
./setup_with_venv.sh

# 3. Edit API key
nano .env  # Add your OpenAI API key
```

### Manual Setup (Step-by-Step)

```bash
# 1. Clone repository
git clone <your-repo-url>
cd safety_report_IB_populated

# 2. Create virtual environment
python3 -m venv venv

# 3. Activate virtual environment
source venv/bin/activate  # macOS/Linux
# OR
venv\Scripts\activate     # Windows

# 4. Install dependencies
pip install --upgrade pip
pip install -r requirements.txt

# 5. Create directories
mkdir -p data/{input/{ib_pdf,dsr_template,mapping},intermediate,output} tests

# 6. Setup API key
cp env_template.txt .env
nano .env  # Edit and add your OpenAI API key

# 7. Test installation
python test_system.py
```

## 💻 Daily Usage

```bash
# Always activate venv first!
cd safety_report_IB_populated
source venv/bin/activate  # macOS/Linux

# Run the pipeline
python main.py \
  --ib-pdf investigative_brochure.pdf \
  --template Drug_Safety_Report_Template.docx \
  --mapping IB_to_DSR_Manual_Mapping.md \
  --output data/output/DSR_Populated.docx

# When done
deactivate
```

## 🔄 Pulling Updates from Other Machine

```bash
cd safety_report_IB_populated
git pull origin main

# Activate venv
source venv/bin/activate

# Update dependencies (if requirements.txt changed)
pip install -r requirements.txt
```

## ⚠️ Common Issues

| Problem | Solution |
|---------|----------|
| `(venv)` not showing | Run `source venv/bin/activate` |
| Module not found | Activate venv first |
| API key error | Check `.env` file exists and has valid key |
| Permission denied | Run `chmod +x setup.sh` |

## 📁 What's Ignored by Git

- `venv/` - Your virtual environment
- `.env` - Your API keys
- `data/intermediate/` and `data/output/` - Generated files

These need to be recreated on each machine!

## ✅ Checklist for New Machine

- [ ] Clone repository
- [ ] Create virtual environment (`python3 -m venv venv`)
- [ ] Activate venv (`source venv/bin/activate`)
- [ ] Install dependencies (`pip install -r requirements.txt`)
- [ ] Create directories (`mkdir -p data/...`)
- [ ] Copy and edit `.env` file with API key
- [ ] Run test (`python test_system.py`)
- [ ] Run pipeline

---

**Pro Tip:** Add to your shell profile (`.zshrc` or `.bashrc`):
```bash
alias dsr='cd ~/Projects/safety_report_IB_populated && source venv/bin/activate'
```
Then just type `dsr` to jump to project and activate venv!

