# Guide: Using the New DSR Template with IB Automation

## Quick Overview

The system can now automatically populate **56 out of 114 fields (49%)** from the Investigator Brochure:
- ✅ **9 fields** by direct extraction (product names, dates, version info)
- ✅ **47 fields** by AI synthesis (safety data, pharmacology, clinical findings)
- ⚠️ **58 fields** require external data (safety database, literature review, etc.)

---

## File Setup

### Required Files

1. **IB PDF**: `investigative_brochure.pdf`
2. **New Template**: `new_DSR_template.docx` (106 placeholders)
3. **Mapping File**: `IB_to_NewDSR_Mapping.md` (comprehensive mapping created)
4. **OpenAI API Key**: Required for AI synthesis fields

### Output Files Created

1. `data/intermediate/ib_index.json` - Cached IB index (reusable)
2. `data/intermediate/matched_content.json` - All extracted content
3. `data/output/DSR_Populated_[date].docx` - Populated template
4. `data/output/population_report_[date].json` - Detailed report

---

## Installation & Setup

### 1. Install Dependencies

```bash
pip install -r requirements.txt
```

Required packages:
- openai
- python-docx
- PyPDF2
- pdfplumber
- python-dotenv

### 2. Set OpenAI API Key

**Option A: Environment file** (recommended)
```bash
echo "OPENAI_API_KEY=sk-your-api-key-here" > .env
```

**Option B: Environment variable**
```bash
export OPENAI_API_KEY=sk-your-api-key-here
```

**Option C: Command line argument**
```bash
--openai-key sk-your-api-key-here
```

---

## Running the Pipeline

### Full Pipeline (Recommended)

```bash
python main.py \
  --ib-pdf investigative_brochure.pdf \
  --template new_DSR_template.docx \
  --mapping IB_to_NewDSR_Mapping.md \
  --output data/output/DSR_Populated.docx
```

### With Custom Options

```bash
python main.py \
  --ib-pdf investigative_brochure.pdf \
  --template new_DSR_template.docx \
  --mapping IB_to_NewDSR_Mapping.md \
  --output data/output/DSR_Populated.docx \
  --force-reindex \
  --index-path data/intermediate/ib_index.json \
  --intermediate-dir data/intermediate
```

### Expected Runtime

- **First run**: 5-15 minutes (includes PDF indexing + AI synthesis)
- **Subsequent runs**: 2-5 minutes (uses cached index)
- **Without AI**: 1-2 minutes (direct extract + unavailable placeholders only)

### Expected Costs

Using GPT-4 Turbo:
- ~47 AI synthesis calls
- ~1,000-2,000 tokens per call
- Estimated: **$2-5 USD per run**

To reduce costs:
- Edit `src/content_matcher.py` line 182: change `gpt-4-turbo-preview` to `gpt-3.5-turbo` (~10x cheaper)

---

## What Gets Populated Automatically

### ✅ Direct Extract Fields (9 fields)

These are copied exactly from the IB:

| Field | Source | Example Value |
|-------|--------|---------------|
| `[INSERT_COMPANY_NAME]` | Cover page | F. Hoffmann-La Roche Ltd |
| `[INSERT_PRODUCT_NAME]` | Title, Section 1.1 | RO7499790 |
| `[INSERT_DRUG_NAME]` | Title, Section 1.1 | pralsetinib |
| `[INSERT_TRADE_NAME]` | Title, Section 1.1 | GAVRETO |
| `[INSERT_RO_NUMBER]` | Title, Section 1.1 | RO7499790 |
| `[INSERT_IBD_DATE]` | Section 1.1 | September 4, 2020 |
| `[INSERT_APPROVAL_DATE]` | Section 1.1 | September 4, 2020 |
| `[INSERT_IB_VERSION]` | Cover page | Version 10 |
| `[INSERT_IB_VERSION_AND_DATE]` | Cover page | Version 10, April 2025 |

### ✅ AI Synthesis Fields (47 fields)

These require OpenAI to synthesize from multiple sections:

**Product Background:**
- `[INSERT_PRODUCT_SUMMARY]` - Product overview
- `[INSERT_MECHANISM_OF_ACTION]` - MOA description
- `[INSERT_PHARMACOLOGY_DESCRIPTION]` - Comprehensive pharmacology
- `[INSERT_FORMULATIONS]` - Available formulations
- `[INSERT_DOSING_INFO]` - Dosing regimen
- `[INSERT_APPROVED_INDICATIONS]` - Approved uses

**Clinical Safety Data:**
- `[INSERT_OVERALL_SAFETY_SUMMARY]` - High-level safety overview
- `[INSERT_COMMON_AES]` - Common adverse events (≥15%)
- `[INSERT_TREATMENT_RELATED_AES]` - Treatment-related AEs
- `[INSERT_GRADE3_PLUS_AES]` - Grade 3+ events
- `[INSERT_SERIOUS_AES]` - Serious adverse events
- `[INSERT_LAB_ABNORMALITIES]` - Laboratory changes

**Nonclinical Data:**
- `[INSERT_TOXICOLOGY_OVERVIEW]` - Toxicology summary
- `[INSERT_NONCLINICAL_FINDINGS]` - Event-specific toxicology

**Biological Plausibility:**
- `[INSERT_PHARMACOLOGIC_BASIS]` - Mechanistic rationale
- `[INSERT_PLAUSIBILITY_ASSESSMENT]` - Overall plausibility

**Discussion Elements:**
- `[INSERT_CLINICAL_SIGNIFICANCE]` - Clinical impact
- `[INSERT_RISK_MANAGEMENT]` - Current risk management

...and 29 more AI synthesis fields!

### ⚠️ Requires External Data (58 fields)

These CANNOT be populated from the IB and will show placeholder messages:

**Signal Information:**
- `[INSERT_SIGNAL_ID]` - Internal tracking number
- `[INSERT_SIGNAL_SOURCE]` - How signal was identified
- `[INSERT_SIGNAL_SOURCE_DETAIL]` - Signal detection details
- `[INSERT_ASSESSMENT_RATIONALE]` - Why assessing this signal

**Safety Database:**
- `[INSERT_TOTAL_CASES_SUMMARY]` - Total cases from database
- `[INSERT_CASE_NARRATIVES]` - Individual case narratives
- `[INSERT_DETAILED_CASE_NARRATIVES]` - Detailed case descriptions
- `[INSERT_SEARCH_TERMS]` - Database search terms used
- `[INSERT_SEARCH_START_DATE]` / `[INSERT_SEARCH_END_DATE]` - Search dates

**Literature Review:**
- `[INSERT_LIT_SEARCH_DETAILS]` - Literature search methodology
- `[INSERT_LITERATURE_RESULTS_SUMMARY]` - Literature findings
- `[INSERT_EPIDEMIOLOGY_DATA]` - Background incidence rates
- `[INSERT_BACKGROUND_INCIDENCE]` - Population rates

**External Databases:**
- `[INSERT_VIGIBASE_RESULTS]` - WHO VigiBase data
- `[INSERT_FAERS_RESULTS]` - FDA FAERS data
- `[INSERT_EUDRAVIGILANCE_RESULTS]` - EMA data

**Report Metadata:**
- `[INSERT_REPORT_TITLE]` - Report title
- `[INSERT_REPORT_NUMBER]` - Tracking number
- `[INSERT_AUTHOR_NAMES]` - Author names
- `[INSERT_REVIEWER_NAMES]` - Reviewer names

**Conclusions:**
- `[INSERT_SIGNAL_DETERMINATION]` - Confirmed/refuted/ongoing
- `[INSERT_RECOMMENDATIONS]` - Recommended actions
- `[INSERT_REGULATORY_ACTIONS]` - Proposed regulatory actions

---

## After Running: What to Do Next

### 1. Review Populated Content

Open `data/output/DSR_Populated.docx`

**Check AI-synthesized sections:**
- Verify accuracy against IB source
- Check for appropriate detail level
- Ensure professional tone
- Confirm no speculation beyond IB content

### 2. Fill Unavailable Fields Manually

Look for placeholders like:
```
[DATA NOT AVAILABLE IN IB - REQUIRES: ...]
```

**Action items:**
1. Run safety database query and add case data
2. Perform literature search and add results
3. Query external databases (VigiBase, FAERS, etc.)
4. Add signal source and assessment rationale
5. Complete epidemiology background
6. Write discussion, conclusions, and recommendations

### 3. Review Population Report

Check `data/output/population_report_[timestamp].json` for:
- Which fields were successfully populated
- Which fields have warnings
- Character counts and content summary

### 4. Medical/Scientific Review

**Required before finalization:**
- Medical reviewer approval of all AI-synthesized content
- Verification of all IB citations and references
- Consistency check across sections
- Final assessment and conclusions review

---

## Customization Options

### Change AI Model (for cost/speed)

Edit `src/content_matcher.py` line 182:

```python
# Original (highest quality, highest cost)
model="gpt-4-turbo-preview"

# Budget option (10x cheaper, slightly lower quality)
model="gpt-3.5-turbo"

# Latest (best performance)
model="gpt-4-turbo"
```

### Adjust AI Prompt Instructions

Edit `src/content_matcher.py` method `_create_extraction_prompt()` to customize:
- Writing style
- Level of detail
- Output format
- Specific requirements

### Modify Mapping

Edit `IB_to_NewDSR_Mapping.md` to:
- Add new field mappings
- Change mapping types (DIRECT_EXTRACT → AI_SYNTHESIS)
- Update IB section references
- Modify extraction instructions

---

## Troubleshooting

### Issue: OpenAI Rate Limit Error

**Solution:**
```python
# In src/content_matcher.py, line 194, increase delay:
time.sleep(2.0)  # Increase from 0.5 to 2.0 seconds
```

### Issue: IB Index Missing Page Content

**Solution:**
```bash
# Force re-indexing
python main.py --force-reindex [other args...]
```

### Issue: Placeholder Not Replaced

**Cause:** Placeholder text is split across Word formatting

**Solution:**
1. Open `new_DSR_template.docx`
2. Find the placeholder manually
3. Delete and retype as continuous text
4. Re-run pipeline

### Issue: AI Synthesis Too Long/Short

**Solution:**
Edit `src/content_matcher.py` line 188:
```python
# Adjust max_tokens
max_tokens=2000  # Increase for longer content, decrease for brevity
```

### Issue: Content Not Found in IB

**Check:**
1. Verify section numbers in mapping file match IB structure
2. Check if IB index was created successfully
3. Review `data/intermediate/ib_index.json` structure
4. Confirm pages listed in mapping exist in PDF

---

## Validation Checklist

Before considering the DSR complete:

**IB-Populated Content:**
- [ ] All direct extract fields verified accurate
- [ ] AI synthesis content reviewed by medical professional
- [ ] All IB citations correct (Version 10, April 2025)
- [ ] Product information matches IB exactly
- [ ] Safety data accurately reflects IB tables
- [ ] Toxicology findings properly summarized
- [ ] No speculation beyond IB content

**External Content Added:**
- [ ] Signal source documented
- [ ] Safety database search completed
- [ ] Case narratives added (minimum Grade 4-5 cases)
- [ ] Literature review current (within 3 months)
- [ ] External database queries completed
- [ ] Epidemiology data obtained
- [ ] Discussion section completed
- [ ] Conclusions and signal determination documented
- [ ] Recommendations provided

**Document Quality:**
- [ ] No `[INSERT_*]` placeholders remaining
- [ ] No `[DATA NOT AVAILABLE]` messages remaining
- [ ] All tables and figures referenced properly
- [ ] Formatting consistent throughout
- [ ] Page numbers and TOC updated
- [ ] All references cited properly
- [ ] Medical review approval obtained
- [ ] QC check completed

---

## Best Practices

### 1. Iterative Approach

**Recommended workflow:**
```bash
# Step 1: Index IB once
python -m src.pdf_indexer --input investigative_brochure.pdf --output data/intermediate/ib_index.json

# Step 2: Test mapping on a few fields
# (edit mapping file to test specific sections)

# Step 3: Run full pipeline
python main.py [args...]

# Step 4: Review output, refine mapping
# (iterate on mapping based on quality)

# Step 5: Final run with refined mapping
python main.py [args...]
```

### 2. Version Control

**Track changes:**
- Save each mapping version with date
- Keep population reports for comparison
- Document any manual edits to AI synthesis
- Note which IB version was used

### 3. Quality Assurance

**For AI-synthesized content:**
- Always cross-reference with original IB sections
- Check that content doesn't exceed IB scope
- Verify numerical data (percentages, counts) exactly
- Ensure medical terminology is used correctly

### 4. Efficiency Tips

- **Cache the index**: First run takes longest; subsequent runs are fast
- **Test incrementally**: Don't wait for full pipeline to test changes
- **Use cheaper model for testing**: Switch to GPT-3.5-turbo during development
- **Batch multiple DSRs**: If using same IB, reuse index for all reports

---

## Advanced: Customizing for Different Events

When creating a DSR for a specific adverse event:

### 1. Update Event-Specific Fields

The mapping automatically adapts based on event type:

**For hematologic events:**
- Nonclinical: Section 4.3.3.1 (Hematotoxicity)
- Clinical: Check AESI Section 5.5.1.2.3

**For hepatic events:**
- Nonclinical: Section 4.3.3.2 (Hepatotoxicity)
- Clinical: Check labs Table 30

**For cardiovascular events:**
- Nonclinical: Section 4.3.3.7 (Other toxicities)
- Clinical: Check AESI Section 5.5.1.2.3

### 2. Check if Event is Identified Risk

If your event appears in **Table 28 (p. 102-107)**, you'll get richer content:
- Risk characterization
- Frequency data
- Management recommendations
- Monitoring parameters

If NOT in Table 28, you'll need more external data.

---

## Support & Maintenance

### When to Update Mapping

- New IB version released → Update page numbers and verify sections
- Template structure changes → Add/modify field mappings
- New identified risks added to IB → Update risk-related mappings
- Feedback on AI synthesis quality → Refine prompts

### File Locations

- **Mapping**: `IB_to_NewDSR_Mapping.md`
- **Parser**: `src/mapping_parser.py`
- **Content Matcher**: `src/content_matcher.py`
- **Prompts**: In `content_matcher.py` method `_create_extraction_prompt()`

---

## Summary

This automation system provides:

✅ **Comprehensive mapping** covering all 114 template fields  
✅ **Rigorous categorization** (direct/AI/unavailable)  
✅ **49% automation** from IB content  
✅ **AI-powered synthesis** for complex sections  
✅ **Clear guidance** on what requires external data  
✅ **Quality controls** and validation checklist  

**Time savings:** 10-15 hours of manual extraction work per DSR

**Next steps:** Run the pipeline and review the output!

---

**Last Updated:** December 2024  
**Mapping Version:** 2.0  
**Template:** new_DSR_template.docx  
**IB Version:** Version 10, April 2025

