# COMPREHENSIVE MAPPING: Investigator Brochure → New DSR Template
**Document Version:** 2.0  
**Created:** December 2024  
**IB Source:** Investigator's Brochure RO7499790 (pralsetinib/GAVRETO), Version 10, April 2025  
**Template:** New Drug Safety Report Template (new_DSR_template.docx)

---

## PURPOSE OF THIS DOCUMENT

This mapping document identifies the specific sections of the Investigator Brochure (IB) that contain information needed to populate each placeholder field in the new DSR template. The mapping enables:
1. Automated population using AI (OpenAI)
2. Quick manual lookup of source content
3. Quality control and validation
4. Clear identification of fields that cannot be populated from the IB

---

## MAPPING LEGEND

**Mapping Types:**
- **DIRECT_EXTRACT**: Content can be copied directly from IB with minimal modification
- **AI_SYNTHESIS**: Requires AI to synthesize/summarize content from one or multiple IB sections
- **UNAVAILABLE**: Cannot be populated from IB; requires external data sources

**Page Number Format:**
- Single page: "15"
- Page range: "23-45"
- Multiple ranges: "15-18, 23-24, 99"

---

# SECTION 1: DOCUMENT METADATA AND IDENTIFICATION

| Placeholder | IB Source Section | Pages | Mapping Type | Detailed Instructions |
|------------|-------------------|-------|--------------|----------------------|
| [INSERT_REPORT_TITLE] | Not in IB | N/A | UNAVAILABLE | **Manual input required**. Format: "Signal Assessment Report: [Event Name] with [Drug Name]" |
| [INSERT_REPORT_NUMBER] | Not in IB | N/A | UNAVAILABLE | **Internal tracking number** from safety database system |
| [INSERT_VERSION_NUMBER] | Not in IB | N/A | UNAVAILABLE | **Version of this DSR**, not IB version. Starts at 1.0 |
| [INSERT_VERSION] | Not in IB | N/A | UNAVAILABLE | Same as INSERT_VERSION_NUMBER |
| [INSERT_STATUS] | Not in IB | N/A | UNAVAILABLE | **Manual input**: Draft / Final / Approved |
| [INSERT_DATE] | Not in IB | N/A | UNAVAILABLE | **Report creation date**, not IB date. Use current date |
| [INSERT_ASSESSMENT_DATE] | Not in IB | N/A | UNAVAILABLE | **Date signal assessment completed**. Use current date |
| [INSERT_AUTHOR_NAMES] | Not in IB | N/A | UNAVAILABLE | **Name(s) of report author(s)** |
| [INSERT_REVIEWER_NAMES] | Not in IB | N/A | UNAVAILABLE | **Name(s) of medical reviewer(s)** |
| [INSERT_CONTRIBUTOR_NAMES] | Not in IB | N/A | UNAVAILABLE | **Names of other contributors** |
| [INSERT_COMPANY_NAME] | Cover page, throughout | 1 | DIRECT_EXTRACT | **Extract**: "F. Hoffmann-La Roche Ltd" or "Roche" |
| [INSERT_DEPARTMENT] | Not in IB | N/A | UNAVAILABLE | **Manual input**: e.g., "Drug Safety Department", "Pharmacovigilance" |

---

# SECTION 2: PRODUCT IDENTIFICATION

| Placeholder | IB Source Section | Pages | Mapping Type | Detailed Instructions |
|------------|-------------------|-------|--------------|----------------------|
| [INSERT_PRODUCT_NAME] | Cover page, Section 1.1 | 1, 15 | DIRECT_EXTRACT | **Extract**: "RO7499790" (compound designation) |
| [INSERT_DRUG_NAME] | Cover page, Section 1.1 | 1, 15 | DIRECT_EXTRACT | **Extract**: "pralsetinib" (INN) |
| [INSERT_TRADE_NAME] | Cover page, Section 1.1 | 1, 15 | DIRECT_EXTRACT | **Extract**: "GAVRETO" (trade name) |
| [INSERT_RO_NUMBER] | Cover page, Section 1.1 | 1, 15 | DIRECT_EXTRACT | **Extract**: "RO7499790" |
| [INSERT_IBD_DATE] | Section 1.1 | 15 | DIRECT_EXTRACT | **Extract**: "September 4, 2020" (US FDA approval date, International Birth Date) |
| [INSERT_APPROVAL_DATE] | Section 1.1 | 15 | DIRECT_EXTRACT | Same as IBD_DATE: "September 4, 2020" |

---

# SECTION 3: REFERENCE DOCUMENTS

| Placeholder | IB Source Section | Pages | Mapping Type | Detailed Instructions |
|------------|-------------------|-------|--------------|----------------------|
| [INSERT_IB_VERSION] | Cover page, header | 1 | DIRECT_EXTRACT | **Extract**: "Version 10" or "10" |
| [INSERT_IB_VERSION_AND_DATE] | Cover page, header | 1 | DIRECT_EXTRACT | **Extract**: "Version 10, April 2025" |
| [INSERT_IB_REFERENCE] | Cover page | 1 | AI_SYNTHESIS | **Generate proper citation**: "F. Hoffmann-La Roche Ltd. Investigator's Brochure: RO7499790 (pralsetinib/GAVRETO). Version 10. April 2025." |
| [INSERT_PBRER_REFERENCE] | Not in IB | N/A | UNAVAILABLE | **Requires PBRER document**. Format: "PBRER for RO7499790, [Data Lock Point]" |
| [INSERT_DATA_LOCK_POINT] | Not in IB | N/A | UNAVAILABLE | **From safety database**, not IB. Format: "DD-MMM-YYYY" |
| [INSERT_REGULATORY_DOCS] | Section 7.1 | 115-116 | AI_SYNTHESIS | **Synthesize from Section 7.1**: List relevant regulatory documents and submissions mentioned |

---

# SECTION 4: SIGNAL IDENTIFICATION

| Placeholder | IB Source Section | Pages | Mapping Type | Detailed Instructions |
|------------|-------------------|-------|--------------|----------------------|
| [INSERT_SIGNAL_ID] | Not in IB | N/A | UNAVAILABLE | **Internal tracking ID** from signal management system |
| [INSERT_SIGNAL_SOURCE] | Not in IB | N/A | UNAVAILABLE | **Manual input**. Examples: "Routine signal detection", "PRAC request", "Regulatory inquiry" |
| [INSERT_SIGNAL_SOURCE_DETAIL] | Not in IB | N/A | UNAVAILABLE | **Detailed description** of how signal was identified |
| [INSERT_ASSESSMENT_RATIONALE] | Not in IB | N/A | UNAVAILABLE | **Why this signal is being assessed**. Context-specific, not in IB |
| [INSERT_RATIONALE_DESCRIPTION] | Not in IB | N/A | UNAVAILABLE | **Expanded rationale** for signal assessment |
| [INSERT_EVENT_DESCRIPTION] | Section 6.4, Table 28 (if identified risk) | 102-107 | AI_SYNTHESIS | **IF event is identified risk**: Extract description from Table 28. **IF NOT**: Cannot populate from IB |
| [INSERT_MEDRA_TERMS] | Not in IB | N/A | UNAVAILABLE | **MedDRA coding** for the event (PT, HLT, HLGT, SOC) |

---

# SECTION 5: EXECUTIVE SUMMARY

| Placeholder | IB Source Section | Pages | Mapping Type | Detailed Instructions |
|------------|-------------------|-------|--------------|----------------------|
| [INSERT_PRODUCT_SUMMARY] | Sections 1.1, 1.2, 2.3, 6.1 | 15-24, 99 | AI_SYNTHESIS | **Synthesize from multiple sections**: Product description (1.1), mechanism (2.3), indications (6.1), formulation (1.2). Create 1-2 paragraph summary |
| [INSERT_KEY_RESULTS_SUMMARY] | Section 1.4.3, Tables 23-26 | 22, 89-92 | AI_SYNTHESIS | **Summarize key safety findings**: Overall safety (1.4.3), common AEs (Table 23), serious AEs (Table 26) |
| [INSERT_EXECUTIVE_SUMMARY_CONCLUSION] | Section 1.4.3, 6.4 | 22, 102-107 | AI_SYNTHESIS | **High-level conclusion**: Synthesize from safety summary and identified risks section |
| [INSERT_DATA_SOURCES_SUMMARY] | Sections 4.3, 5.5, 5.6 | 33-45, 87-99 | AI_SYNTHESIS | **Summarize data sources**: Nonclinical (4.3), clinical trials (5.5), post-marketing (5.6) |

---

# SECTION 6: BACKGROUND - PRODUCT INFORMATION

| Placeholder | IB Source Section | Pages | Mapping Type | Detailed Instructions |
|------------|-------------------|-------|--------------|----------------------|
| [INSERT_PHARMACOLOGY_DESCRIPTION] | Sections 2.1, 2.3, 4.1.2 | 23-24, 26-29 | AI_SYNTHESIS | **Comprehensive pharmacology**: Synthesize from Section 2.1 (RET kinase background), 2.3 (mechanism), 4.1.2 (oncology pharmacology) |
| [INSERT_MECHANISM_OF_ACTION] | Section 2.3 | 23-24 | AI_SYNTHESIS | **Primary MOA description**: Selective RET kinase inhibitor mechanism. Synthesize 1-2 paragraphs |
| [INSERT_MOA_REVIEW] | Sections 2.3, 4.1.2 | 23-24, 26-29 | AI_SYNTHESIS | **Detailed MOA review**: Include target selectivity, downstream effects, cellular mechanisms |
| [INSERT_FORMULATIONS] | Section 1.2, 3.2.1 | 16-18, 30 | AI_SYNTHESIS | **Available formulations**: Capsule strength, excipients, physical properties |
| [INSERT_DOSING_INFO] | Sections 1.2.3, 3.2.2 | 18-19, 30-32 | AI_SYNTHESIS | **Dosing regimen**: Recommended dose (400 mg daily), dose modifications, food effects |
| [INSERT_APPROVED_INDICATIONS] | Section 6.1 | 99 | AI_SYNTHESIS | **List approved indications**: RET fusion-positive NSCLC, RET-altered thyroid cancer (MTC), with patient populations |
| [INSERT_CLINICAL_TRIAL_EXPOSURE] | Section 5.1 | 46 | AI_SYNTHESIS | **Clinical trial exposure summary**: Total patients, key studies (ARROW, MyTACTIC), study phases |
| [INSERT_MARKETING_EXPOSURE] | Section 5.6 | 99 | AI_SYNTHESIS | **Post-marketing exposure**: Geographic distribution, estimated patient exposure |

---

# SECTION 7: BACKGROUND - EVENT OF INTEREST

| Placeholder | IB Source Section | Pages | Mapping Type | Detailed Instructions |
|------------|-------------------|-------|--------------|----------------------|
| [INSERT_EVENT_CASE_DEFINITION] | Not in IB | N/A | UNAVAILABLE | **Medical definition** from UpToDate, medical dictionaries, or clinical guidelines |
| [INSERT_EPIDEMIOLOGY_DATA] | Not in IB | N/A | UNAVAILABLE | **Background incidence rates** from published epidemiology literature |
| [INSERT_BACKGROUND_INCIDENCE] | Not in IB | N/A | UNAVAILABLE | Same as EPIDEMIOLOGY_DATA |
| [INSERT_BACKGROUND_RATES] | Not in IB | N/A | UNAVAILABLE | Same as EPIDEMIOLOGY_DATA |
| [INSERT_RISK_FACTORS] | Not in IB | N/A | UNAVAILABLE | **Risk factors for event** from clinical literature, not typically in IB |
| [INSERT_DIAGNOSIS_TREATMENT] | Not in IB | N/A | UNAVAILABLE | **Clinical management** from medical guidelines |
| [INSERT_CLASS_EFFECT_INFORMATION] | Section 2.1, limited | 23 | AI_SYNTHESIS | **Check Section 2.1** for RET inhibitor class information. Likely needs external literature search |
| [INSERT_CLASS_COMPARISON] | Section 2.1, 7.2 | 23, 116-119 | AI_SYNTHESIS | **Limited in IB**: Check Section 2.1 and references. May need external data |
| [INSERT_INDICATION_COMPARISON] | Not in IB | N/A | UNAVAILABLE | **Event in same indication** requires literature review |
| [INSERT_COMPARISONS] | Not in IB | N/A | UNAVAILABLE | **Comparative analysis** requires external data |

---

# SECTION 8: DATA SOURCES AND METHODS

| Placeholder | IB Source Section | Pages | Mapping Type | Detailed Instructions |
|------------|-------------------|-------|--------------|----------------------|
| [INSERT_DATA_SOURCES] | Sections 4.3, 5.5, 5.6 | 33-45, 87-99 | AI_SYNTHESIS | **List available data sources**: Nonclinical studies, clinical trials (ARROW, MyTACTIC), post-marketing |
| [INSERT_SEARCH_START_DATE] | Not in IB | N/A | UNAVAILABLE | **Safety database search start date**. Manual input |
| [INSERT_SEARCH_END_DATE] | Not in IB | N/A | UNAVAILABLE | **Safety database search end date** (data lock point) |
| [INSERT_SEARCH_TERMS] | Not in IB | N/A | UNAVAILABLE | **MedDRA search terms used** in safety database query |
| [INSERT_SEARCH_STRATEGIES] | Not in IB | N/A | UNAVAILABLE | **Detailed search methodology** for safety database |
| [INSERT_INCLUSION_CRITERIA] | Not in IB | N/A | UNAVAILABLE | **Case inclusion/exclusion criteria** |
| [INSERT_LIT_SEARCH_DATE] | Not in IB | N/A | UNAVAILABLE | **Literature search date range** |
| [INSERT_LIT_SEARCH_TERMS] | Not in IB | N/A | UNAVAILABLE | **Literature search terms** (keywords, MeSH terms) |
| [INSERT_LIT_SEARCH_DETAILS] | Not in IB | N/A | UNAVAILABLE | **Databases searched** (Medline, Embase), search strategy |
| [INSERT_MEDLINE_DATES] | Not in IB | N/A | UNAVAILABLE | **Medline search date range** |
| [INSERT_EMBASE_DATES] | Not in IB | N/A | UNAVAILABLE | **Embase search date range** |

---

# SECTION 9: REVIEW OF NONCLINICAL DATA

| Placeholder | IB Source Section | Pages | Mapping Type | Detailed Instructions |
|------------|-------------------|-------|--------------|----------------------|
| [INSERT_TOXICOLOGY_OVERVIEW] | Section 4.3.1, 4.3.3 | 33-45 | AI_SYNTHESIS | **Comprehensive toxicology summary**: Section 4.3.1 (overview), relevant subsections of 4.3.3 based on event |
| [INSERT_NONCLINICAL_FINDINGS] | Section 4.3.3 (event-specific) | 33-45 | AI_SYNTHESIS | **Event-specific findings**: 4.3.3.1 (hematotox), 4.3.3.2 (hepatotox), 4.3.3.3 (renal), 4.3.3.4 (reproductive), 4.3.3.5 (genotox), 4.3.3.6 (carcino), 4.3.3.7 (other) |
| [INSERT_SPECIES_DOSE_INFO] | Section 4.3.1, 4.3.3 | 33-45 | AI_SYNTHESIS | **Species and dose details**: Extract species studied, dose levels, exposure margins from toxicology sections |

---

# SECTION 10: REVIEW OF CLINICAL TRIAL DATA

| Placeholder | IB Source Section | Pages | Mapping Type | Detailed Instructions |
|------------|-------------------|-------|--------------|----------------------|
| [INSERT_OVERALL_SAFETY_SUMMARY] | Section 1.4.3 | 22 | AI_SYNTHESIS | **High-level safety overview**: Extract and synthesize from Section 1.4.3 |
| [INSERT_KEY_STUDIES_LIST] | Section 5.1, 5.5 | 46, 87-99 | AI_SYNTHESIS | **List key clinical studies**: ARROW (BLU-667-1101), MyTACTIC (ML42439), other relevant studies |
| [INSERT_CLINICAL_AE_DATA] | Section 5.5.1.2, Tables 23-26 | 87-92 | AI_SYNTHESIS | **Comprehensive AE data**: Overall AE overview, tables of common/serious AEs |
| [INSERT_COMMON_AES] | Table 23 | 89 | AI_SYNTHESIS | **Common adverse events**: Events in ≥15% of patients from Table 23. Format as list with frequencies |
| [INSERT_TREATMENT_RELATED_AES] | Table 24 | 90 | AI_SYNTHESIS | **Treatment-related AEs**: From Table 24. Include frequency and grading |
| [INSERT_GRADE3_PLUS_AES] | Table 25 | 91 | AI_SYNTHESIS | **Grade 3+ adverse events**: From Table 25 (Grade ≥3 in ≥2% of patients) |
| [INSERT_SERIOUS_AES] | Table 26, Section 5.5.1.2.2 | 91-92 | AI_SYNTHESIS | **Serious adverse events**: Table 26 (SAEs in ≥1%) plus narrative from 5.5.1.2.2 |
| [INSERT_TOTAL_SAE] | Table 26, Section 5.5.1.2.2 | 91-92 | AI_SYNTHESIS | **Total number or percentage of SAEs**: Extract overall SAE incidence |
| [INSERT_GRADE4_COUNT] | Section 5.5.1.2 | 87-95 | AI_SYNTHESIS | **Grade 4 events**: Extract count/frequency of Grade 4 AEs if reported |
| [INSERT_GRADE5_COUNT] | Section 5.5.1.2.4 | 93 | AI_SYNTHESIS | **Deaths (Grade 5)**: From Section 5.5.1.2.4, extract number of deaths and causality |
| [INSERT_LAB_ABNORMALITIES] | Table 30 | 107 | AI_SYNTHESIS | **Laboratory abnormalities**: From Table 30. Include hematology, chemistry findings, Grade 3-4 changes |
| [INSERT_SUMMARY_TABLES] | Tables 23-30 | 89-92, 102-107 | AI_SYNTHESIS | **Reference key tables**: List tables included (Tables 23-26 for AEs, Table 30 for labs, Table 28 for risks) |

---

# SECTION 11: REVIEW OF SAFETY DATABASE

| Placeholder | IB Source Section | Pages | Mapping Type | Detailed Instructions |
|------------|-------------------|-------|--------------|----------------------|
| [INSERT_TOTAL_CASES_SUMMARY] | Not in IB | N/A | UNAVAILABLE | **Total cases from safety database** matching search criteria. Requires database query |
| [INSERT_SPONSORED_TRIAL_CASES] | Not in IB | N/A | UNAVAILABLE | **Cases from sponsored clinical trials** - individual case level data not in IB |
| [INSERT_NONSPONSORED_TRIAL_CASES] | Not in IB | N/A | UNAVAILABLE | **Cases from non-sponsored trials** |
| [INSERT_PM_SPONTANEOUS_CASES] | Not in IB | N/A | UNAVAILABLE | **Post-marketing spontaneous reports** |
| [INSERT_PM_SOLICITED_CASES] | Not in IB | N/A | UNAVAILABLE | **Post-marketing solicited reports** (e.g., PMS studies) |
| [INSERT_COMPASSIONATE_USE_CASES] | Not in IB | N/A | UNAVAILABLE | **Compassionate use / expanded access cases** |
| [INSERT_FREQUENT_PTS] | Not in IB | N/A | UNAVAILABLE | **Most frequent Preferred Terms** from database query |
| [INSERT_CASE_NARRATIVES] | Not in IB | N/A | UNAVAILABLE | **Individual case narratives** for selected cases (Grade 4-5, informative cases) |
| [INSERT_DETAILED_CASE_NARRATIVES] | Not in IB | N/A | UNAVAILABLE | **Detailed narratives** with patient demographics, dosing, event details, outcome |

---

# SECTION 12: LITERATURE REVIEW

| Placeholder | IB Source Section | Pages | Mapping Type | Detailed Instructions |
|------------|-------------------|-------|--------------|----------------------|
| [INSERT_LITERATURE_REFERENCES] | Section 7.2 | 116-119 | AI_SYNTHESIS | **Extract references**: List relevant literature references from Section 7.2. Note: IB references may be dated |
| [INSERT_LITERATURE_RESULTS_SUMMARY] | Section 7.2, limited | 116-119 | AI_SYNTHESIS | **Limited summary possible**: Can list IB references, but comprehensive lit review requires new search |
| [INSERT_KEY_PUBLICATIONS] | Section 7.2 | 116-119 | AI_SYNTHESIS | **Key publications from IB**: Extract most relevant publications for this event (if mentioned) |
| [INSERT_SPONSOR_REPORTS] | Section 7.1 | 115-116 | AI_SYNTHESIS | **Sponsor reports list**: Clinical study reports, integrated summaries, regulatory submissions from 7.1 |

---

# SECTION 13: EXTERNAL DATABASE REVIEW

| Placeholder | IB Source Section | Pages | Mapping Type | Detailed Instructions |
|------------|-------------------|-------|--------------|----------------------|
| [INSERT_EXTERNAL_DB_RESULTS] | Not in IB | N/A | UNAVAILABLE | **External database queries**: WHO VigiBase, FAERS, EudraVigilance results |
| [INSERT_VIGIBASE_RESULTS] | Not in IB | N/A | UNAVAILABLE | **WHO VigiBase query results** |
| [INSERT_FAERS_RESULTS] | Not in IB | N/A | UNAVAILABLE | **FDA FAERS query results** |
| [INSERT_EUDRAVIGILANCE_RESULTS] | Not in IB | N/A | UNAVAILABLE | **EudraVigilance query results** |
| [INSERT_EXTERNAL_DB_REFERENCES] | Not in IB | N/A | UNAVAILABLE | **Citations for external database queries** |

---

# SECTION 14: BIOLOGICAL PLAUSIBILITY

| Placeholder | IB Source Section | Pages | Mapping Type | Detailed Instructions |
|------------|-------------------|-------|--------------|----------------------|
| [INSERT_PHARMACOLOGIC_BASIS] | Sections 2.3, 3.4, 4.1.2 | 23-24, 26-33 | AI_SYNTHESIS | **Mechanistic rationale**: Synthesize from MOA (2.3), clinical pharmacology (3.4), nonclinical pharmacology (4.1.2) |
| [INSERT_PLAUSIBILITY_ASSESSMENT] | Sections 2.3, 4.3.3, 5.5 | 23-24, 33-45, 87-99 | AI_SYNTHESIS | **Overall plausibility**: Synthesize from MOA, relevant toxicology, related clinical AEs |
| [INSERT_SUPPORTING_EVIDENCE] | Sections 4.3.3, 5.5.1.2.3 | 33-45, 92-95 | AI_SYNTHESIS | **Evidence supporting link**: Nonclinical findings + related clinical AEs + AESI data |

---

# SECTION 15: DISCUSSION AND ANALYSIS

| Placeholder | IB Source Section | Pages | Mapping Type | Detailed Instructions |
|------------|-------------------|-------|--------------|----------------------|
| [INSERT_FINDINGS_SUMMARY] | Sections 1.4.3, 5.5, 6.4 | 22, 87-99, 102-107 | AI_SYNTHESIS | **Summarize all findings**: Safety summary, clinical data, identified risks |
| [INSERT_CLINICAL_SIGNIFICANCE] | Section 6.3, 6.4, Table 28 | 100-107 | AI_SYNTHESIS | **Clinical impact**: Extract from Warnings (6.3) and risk characterization (6.4, Table 28) |
| [INSERT_CLINICAL_IMPACT] | Section 6.3, 6.4 | 100-107 | AI_SYNTHESIS | Same as CLINICAL_SIGNIFICANCE |
| [INSERT_CLINICAL_RELEVANCE] | Section 6.3, 6.4 | 100-107 | AI_SYNTHESIS | Same as CLINICAL_SIGNIFICANCE |
| [INSERT_ASSOCIATION_STRENGTH] | Not in IB | N/A | UNAVAILABLE | **Assessment of causality strength**. Requires analysis not provided in IB |
| [INSERT_EVIDENCE_STRENGTH] | Not in IB | N/A | UNAVAILABLE | **Evidence strength rating** (e.g., strong, moderate, weak). Analytical assessment |
| [INSERT_DATA_CONSISTENCY] | Not in IB | N/A | UNAVAILABLE | **Consistency across data sources**. Requires comparative analysis |
| [INSERT_LIMITATIONS] | Not in IB | N/A | UNAVAILABLE | **Limitations of analysis**. Specific to this assessment, not in IB |

---

# SECTION 16: CONCLUSIONS AND RECOMMENDATIONS

| Placeholder | IB Source Section | Pages | Mapping Type | Detailed Instructions |
|------------|-------------------|-------|--------------|----------------------|
| [INSERT_OVERALL_ASSESSMENT] | Section 1.4.3, 6.4 | 22, 102-107 | AI_SYNTHESIS | **High-level assessment**: Can extract benefit-risk language from 1.4.3 and 6.4, but final determination requires analysis |
| [INSERT_SIGNAL_DETERMINATION] | Not in IB | N/A | UNAVAILABLE | **Signal confirmed/refuted/needs monitoring**. Requires analytical decision |
| [INSERT_RECOMMENDATIONS] | Section 6.3, 6.4 (partial) | 100-107 | AI_SYNTHESIS | **Can extract current risk management** from 6.3/6.4, but new recommendations require analysis |
| [INSERT_RISK_MANAGEMENT] | Section 6.3, 6.4, Table 28 | 100-107 | AI_SYNTHESIS | **Current risk management**: Extract from Warnings (6.3) and risk mitigation (Table 28) |
| [INSERT_REGULATORY_ACTIONS] | Not in IB | N/A | UNAVAILABLE | **Proposed regulatory actions**. Decision not in IB |
| [INSERT_NEXT_REVIEW_DATE] | Not in IB | N/A | UNAVAILABLE | **Date for next review**. Manual determination |

---

# MAPPING STATISTICS SUMMARY

**Total Placeholders:** 106

**By Mapping Type:**
- DIRECT_EXTRACT: 12 fields (11%)
- AI_SYNTHESIS: 51 fields (48%)
- UNAVAILABLE: 43 fields (41%)

**Can Populate from IB:** 63 fields (59%)
**Require External Data:** 43 fields (41%)

---

# EXTRACTION PRIORITY GUIDE

## Priority 1: Direct Extract (Fastest, No AI Needed)
Process these first - simple text extraction:
- Product identification (drug name, RO number, trade name)
- IB version and dates
- Approval date (IBD)
- Company name

## Priority 2: AI Synthesis (Core Content)
Process with OpenAI - requires synthesis/summarization:
- Product background and pharmacology
- Clinical trial safety data
- Toxicology summaries
- Mechanism of action
- Approved indications
- Biological plausibility
- Clinical significance

## Priority 3: Unavailable (Skip/Placeholder)
Mark with "Cannot populate from IB - requires [source]":
- Signal source and assessment rationale
- Safety database query results
- Individual case narratives
- Literature review results
- External database queries
- Epidemiology data
- Final conclusions and recommendations

---

# EVENT-SPECIFIC TOXICOLOGY MAPPING

When populating [INSERT_NONCLINICAL_FINDINGS], use this guide:

| Event Type | Primary IB Section | Page Numbers |
|------------|-------------------|--------------|
| Hematologic (neutropenia, anemia, thrombocytopenia) | 4.3.3.1 | 36-37 |
| Hepatic (ALT/AST elevation, hepatotoxicity) | 4.3.3.2 | 37-39 |
| Renal (creatinine increase, renal toxicity) | 4.3.3.3 | 39-40 |
| Reproductive/teratogenic | 4.3.3.4 | 40-42 |
| Genotoxicity/mutagenicity | 4.3.3.5 | 42-43 |
| Carcinogenicity | 4.3.3.6 | 43-44 |
| Cardiovascular/pulmonary/other | 4.3.3.7 | 44-45 |

---

# EVENT-SPECIFIC CLINICAL DATA MAPPING

When populating clinical AE fields for specific event:

**Step 1:** Check if event is identified risk
- Look in Table 28 (p. 102-107)
- If YES: Extract comprehensive information from Table 28 + Section 6.3

**Step 2:** Check Adverse Events of Special Interest (AESI)
- Section 5.5.1.2.3 (p. 92-95)
- May have detailed monitoring data

**Step 3:** Check aggregate AE tables
- Table 23: Common AEs (≥15%)
- Table 24: Treatment-related AEs
- Table 25: Grade ≥3 AEs
- Table 26: Serious AEs

**Step 4:** Check laboratory data if relevant
- Table 30 (p. 107): Laboratory abnormalities

---

# AI SYNTHESIS INSTRUCTIONS

For fields marked AI_SYNTHESIS, provide OpenAI with:

**Context:**
- Field name and purpose
- Target audience (regulatory, medical professionals)
- Desired length (brief/moderate/comprehensive)

**Source Material:**
- Extracted text from specified IB sections
- Page numbers for reference

**Instructions:**
- "Synthesize the following content from the IB into a [brief/comprehensive] summary for [field purpose]"
- "Maintain scientific accuracy and regulatory tone"
- "Focus on [specific aspects relevant to field]"
- "Format as [paragraph/bullet points/table] as appropriate"

**Quality Checks:**
- Content is scientifically accurate
- All claims are supported by IB source
- Appropriate level of detail for field
- Professional regulatory writing style
- No speculation beyond IB content

---

# VALIDATION CHECKLIST

Before finalizing populated DSR:

**IB Content (AI Synthesis):**
- [ ] All AI-synthesized content verified against source sections
- [ ] Product identification fields accurate
- [ ] Mechanism of action correctly described
- [ ] Clinical trial data accurately summarized
- [ ] Toxicology findings relevant to event
- [ ] Identified risks properly characterized
- [ ] All page references correct

**External Content (Manual Input):**
- [ ] Signal source documented
- [ ] Safety database search performed and results added
- [ ] Case narratives added for key cases
- [ ] Literature review completed and current
- [ ] External database queries performed
- [ ] Epidemiology data obtained
- [ ] Final assessment and recommendations completed

**Document Quality:**
- [ ] All placeholders replaced (no [INSERT_*] remaining)
- [ ] Formatting preserved
- [ ] Tables and figures properly referenced
- [ ] Internal consistency checked
- [ ] References complete and formatted
- [ ] Medical and regulatory review completed

---

# IMPORTANT LIMITATIONS

## What This Mapping CAN Provide:
✅ Comprehensive product background from IB  
✅ Complete nonclinical safety data  
✅ Aggregate clinical trial safety data  
✅ Mechanism of action and pharmacology  
✅ Currently identified risks and warnings  
✅ References to source documents  

## What This Mapping CANNOT Provide:
❌ Signal detection methodology and rationale  
❌ Individual case-level data from safety database  
❌ Current literature review (IB references may be dated)  
❌ Real-time post-marketing data  
❌ External database queries (VigiBase, FAERS)  
❌ Epidemiological background data  
❌ Final signal assessment determination  
❌ Regulatory recommendations  

## Critical Notes:

1. **IB Data Lock Point**: IB has a specific data lock date. Safety data after this date will not be included.

2. **Identified Risks**: IB provides excellent information for events already identified as risks (Table 28). Novel signals will have limited information.

3. **Aggregate vs. Individual**: IB presents pooled clinical trial data, not individual case details needed for case narratives.

4. **Medical Review Required**: All AI-synthesized content must be reviewed by qualified medical/scientific personnel.

5. **Regulatory Completeness**: IB content alone is insufficient for complete signal assessment. External data sources are essential.

---

# VERSION HISTORY

**Version 2.0 - December 2024**
- Complete mapping for new DSR template (106 placeholders)
- Categorized all fields by mapping type
- Added detailed AI synthesis instructions
- Included event-specific guidance
- Added validation checklist

**Future Updates:**
- Update when IB Version 11+ released
- Modify if DSR template structure changes
- Refine AI synthesis prompts based on output quality

---

**END OF MAPPING DOCUMENT**

