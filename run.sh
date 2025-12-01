#!/bin/bash

# IB-to-DSR Automation Pipeline
# Populates the DSR template from the Investigator Brochure
# 
# Features:
# - Automatically clears bold/large formatting from placeholders for clean output
# - Direct extraction: 9 fields
# - AI synthesis: 47 fields (requires OpenAI API key)
# - Marks 58 fields needing external data
#
# Make sure to set: export OPENAI_API_KEY=sk-your-key-here

python main.py \
  --ib-pdf investigative_brochure.pdf \
  --template DSR_template.docx \
  --mapping IB_to_DSR_Mapping.md \
  --output data/output/DSR_Populated.docx
