from setuptools import setup, find_packages

setup(
  name='report_export',
  version='0.1',
  packages=find_packages(),
  entry_points={
    'nbconvert.exporters': [
      'PDF_report = nbconvert_pdf_report_exporter:PDFReportExporter',
    ],
  }
)
