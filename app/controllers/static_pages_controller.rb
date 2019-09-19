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
      type: "application/pdf",
      disposition: 'inline; filename=cronogramaWIS.pdf')
  end

  def download_schedule_gobierno_digital
    send_file(
      "#{Rails.root}/app/assets/images/cronogramaGobiernoDigital.pdf",
      filename: "cronogramaGobiernoDigital.pdf",
      type: "application/pdf",
      disposition: 'inline; filename=cronogramaGobiernoDigital.pdf')
  end

  # def download_schedule_wasi
  #   send_file(
  #     "#{Rails.root}/app/assets/images/cronogramaWASI.pdf",
  #     filename: "cronogramaWASI.pdf",
  #     type: "application/pdf",
  #     disposition: 'inline; filename=cronogramaWASI.pdf')
  # end

  # def download_schedule_wpdp
  #   send_file(
  #     "#{Rails.root}/app/assets/images/cronogramaWPDP.pdf",
  #     filename: "cronogramaWPDP.pdf",
  #     type: "application/pdf",
  #     disposition: 'inline; filename=cronogramaWPDP.pdf')
  # end

  # def download_schedule_wtiae
  #   send_file(
  #     "#{Rails.root}/app/assets/images/cronogramaWTIAE.pdf",
  #     filename: "cronogramaWTIAE.pdf",
  #     type: "application/pdf",
  #     disposition: 'inline; filename=cronogramaWTIAE.pdf')
  # end

  # def download_schedule_computacion_grafica
  #   send_file(
  #     "#{Rails.root}/app/assets/images/cronogramaComputacionGrafica.pdf",
  #     filename: "cronogramaComputacionGrafica.pdf",
  #     type: "application/pdf",
  #     disposition: 'inline; filename=cronogramaComputacionGrafica.pdf')
  # end

  # def download_schedule_wbdmd
  #   send_file(
  #     "#{Rails.root}/app/assets/images/cronogramaWBDMD.pdf",
  #     filename: "cronogramaWBDMD.pdf",
  #     type: "application/pdf",
  #     disposition: 'inline; filename=cronogramaWBDMD.pdf')
  # end

  # def download_schedule_warso
  #   send_file(
  #     "#{Rails.root}/app/assets/images/cronogramaWARSO.pdf",
  #     filename: "cronogramaWARSO.pdf",
  #     type: "application/pdf",
  #     disposition: 'inline; filename=cronogramaWARSO.pdf')
  # end

  # def download_schedule_wiss
  #   send_file(
  #     "#{Rails.root}/app/assets/images/cronogramaWISS.pdf",
  #     filename: "cronogramaWISS.pdf",
  #     type: "application/pdf",
  #     disposition: 'inline; filename=cronogramaWISS.pdf')
  # end

  # def download_schedule_wpsstr
  #   send_file(
  #     "#{Rails.root}/app/assets/images/cronogramaWPSSTR.pdf",
  #     filename: "cronogramaWPSSTR.pdf",
  #     type: "application/pdf",
  #     disposition: 'inline; filename=cronogramaWPSSTR.pdf')
  # end

  # def download_schedule_wsi
  #   send_file(
  #     "#{Rails.root}/app/assets/images/cronogramaWSI.pdf",
  #     filename: "cronogramaWSI.pdf",
  #     type: "application/pdf",
  #     disposition: 'inline; filename=cronogramaWSI.pdf')
  # end

  # def download_schedule_wiei
  #   send_file(
  #     "#{Rails.root}/app/assets/images/cronogramaWIEI.pdf",
  #     filename: "cronogramaWIEI.pdf",
  #     type: "application/pdf",
  #     disposition: 'inline; filename=cronogramaWIEI.pdf')
  # end



  def workshops
  end

  def accommodation
  end
  
end
