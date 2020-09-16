from nbconvert.exporters.pdf import PDFExporter

class PDFReportExporter(PDFExporter):
  """
  PDF exporter with the report template set by default
  """

  export_from_notebook = 'PDF - Report template'

  def _template_file_default(self):
    return 'report'
