[中文](./README.md) | **English**

# pdf2md-ocr — Batch OCR Scanned PDFs into Markdown

Batch-OCR every **scanned PDF** (image-based, non-selectable text) in the current folder into Markdown (`.md`), split by page. Optimized for Chinese text.

Powered by RapidOCR (models bundled in the package — no paddle dependency). Original PDFs are never touched.

## Usage

1. Download `convert_ocr.py` and `双击运行_OCR.bat` into the same folder
2. Put the scanned PDFs you want to recognize in the same folder
3. Double-click `双击运行_OCR.bat` and wait for it to finish
4. Enjoy! Results are in the `ocr_md_output` folder next to the script — one `.md` per PDF

## Notes

- Requires Python 3.12 (on Windows, install from [python.org](https://www.python.org))
- On first run it auto-installs dependencies over the internet (pymupdf, rapidocr-onnxruntime) — keep the window open
- OCR is slow: one to two seconds per page, so a book of several hundred pages may take 10–20 minutes
- Old scanned books will never OCR 100% accurately; if small text recognizes poorly, change `DPI = 200` to `300` in the script (slower but more accurate)
- Output is split into "第 N 页" (Page N) sections so you can cross-reference the original
