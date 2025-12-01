# IB-to-DSR Automation Pipeline

Automated Drug Safety Report (DSR) population from Investigator Brochure using AI.

## Quick Start

```bash
# 1. Install dependencies
pip install -r requirements.txt

# 2. Set your OpenAI API key
export OPENAI_API_KEY=sk-your-api-key-here

# 3. Run the pipeline
./run.sh
```

**That's it!** The system will populate 56 fields (49.1%) automatically from the IB.

## What It Does

- ✅ **Direct extraction** (9 fields): Product names, dates, version info
- ✅ **AI synthesis** (47 fields): Safety data, pharmacology, clinical trials
- ⚠️ **Manual input needed** (58 fields): Signal info, case data, literature review

## Key Files

| File | Purpose |
|------|---------|
| `run.sh` | Run the complete pipeline |
| `test.py` | Validate setup and mapping |
| `DSR_template.docx` | Word template with placeholders |
| `IB_to_DSR_Mapping.md` | Complete field mapping (114 fields) |
| `investigative_brochure.pdf` | Source document |
| `GUIDE.md` | Detailed documentation |
| `QUICK_START.md` | Quick start guide with examples |

## Output

```
data/
├── intermediate/
│   ├── ib_index.json           # Cached IB index (reusable)
│   └── matched_content.json    # All extracted content
└── output/
    ├── DSR_Populated.docx      # Your populated template
    └── population_report_*.json # Detailed report
```

## Testing

```bash
python test.py
```

Should show:
```
✅ ALL TESTS PASSED
📊 TEMPLATE COVERAGE: 114/114 (100.0%)
📊 AUTOMATION CAPABILITY: 56/114 (49.1%)
```

## Documentation

- **QUICK_START.md** - Quick start with examples
- **GUIDE.md** - Comprehensive guide with all details
- **IB_to_DSR_Mapping.md** - Field-by-field mapping reference

## Cost & Runtime

- **First run:** 5-15 minutes (PDF indexing + AI)
- **Subsequent runs:** 2-5 minutes (cached index)
- **Cost:** $2-5 per run (using GPT-4 Turbo)

## Requirements

- Python 3.8+
- OpenAI API key
- Dependencies in `requirements.txt`

---

*Last Updated: December 2024*  
*Template: DSR_template.docx (114 fields)*  
*IB: Version 10, April 2025*

