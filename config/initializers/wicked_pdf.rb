if Rails.env.production?
  wkhtmltopdf_path = "/yangfurails6/bin/wkhtmltopdf-amd64"
else
  # Linux (check your processor for Intel x86 or AMD x64)
  # wkhtmltopdf_path = "#{Rails.root}/bin/wkhtmltopdf-amd64"
  # wkhtmltopdf_path = "#{Rails.root}/bin/wkhtmltopdf-i386"
  # OS X
  # wkhtmltopdf_path = "#{Rails.root}/bin/wkhtmltopdf-0.9.9-OS-X.i386"            
  # Windows
  # 公司
  # wkhtmltopdf_path = "#{Rails.root}/bin/wkhtmltopdf"
  # wkhtmltopdf_path = 'D:\OQC\Program_Area\wkhtmltox\bin\wkhtmltopdf.exe'
  #自家
  # wkhtmltopdf_path = '#{Rails.root}/bin/wkhtmltopdf.exe'
  # wkhtmltopdf_path = 'D:\ProgramFiles\wkhtmltox\bin\wkhtmltopdf.exe'
  # exe_path: 'D:\ProgramFiles\wkhtmltox\bin\wkhtmltopdf.exe'
end

WickedPdf.config = { exe_path: wkhtmltopdf_path, wkhtmltopdf: wkhtmltopdf_path }