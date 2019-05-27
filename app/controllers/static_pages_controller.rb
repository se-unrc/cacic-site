class StaticPagesController < ApplicationController
  def about
  end

  def speakers
  end

  def sponsors
  end

  def contact
  end

  def cfp
  end

  def paper_format
  end

  def download_paper_format
    filename = params[:id]
    send_file(
      "#{Rails.root}/app/assets/images/CFP-CACIC2019.pdf",
      filename: "#{filename}.zip",
      type: 'application/zip')
  end

  def download_cpf
    send_file(
      "#{Rails.root}/app/assets/images/CFP-CACIC2019.pdf",
      filename: "CFP-CACIC2019.pdf",
      type: "application/pdf")
  end
end
