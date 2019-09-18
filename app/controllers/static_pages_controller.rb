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
    file_hash = {
      'LaTeX2e' => 'LaTeX2e.zip',
      'Office2007' => 'Office2007.zip',
      'word-97-2003' => 'word-97-2003.zip',
      'templateLNCS' => 'templateLNCS.odt'
    }
    filename = params[:id]

    send_file(
      "#{Rails.root}/app/assets/images/paper-format/#{file_hash.fetch(filename)}",
      filename: file_hash.fetch(filename),
      type: 'application/zip')
  end


  def download_cpf
    send_file(
      "#{Rails.root}/app/assets/images/CFP-CACIC2019.pdf",
      filename: "CFP-CACIC2019.pdf",
      type: "application/pdf")
  end

  def download_accepted_paper
    send_file(
      "#{Rails.root}/app/assets/images/ListadoArticulosAceptados.pdf",
      filename: "ListadoArticulosAceptados.pdf",
      type: "application/pdf")
  end

  def download_schedule_wis
    send_file(
      "#{Rails.root}/app/assets/images/cronogramaWIS.pdf",
      filename: "cronogramaWIS.pdf",
      type: "application/pdf")
  end


  def workshops
  end

  def accommodation
  end
  
end
