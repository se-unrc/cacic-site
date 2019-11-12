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

  def download_schedule
    file_hash = {
      'wis' => 'CronogramaWIS.pdf',
      'gobierno_digital' => 'CronogramaGobiernoDigital.pdf',
      'wasi' => 'CronogramaWASI.pdf',
      'warso' => 'CronogramaWARSO.pdf',
      'wbdmd' => 'CronogramaWBDMD.pdf',
      'wiss' => 'CronogramaWISS.pdf',
      'wtiae' => 'CronogramaWTIAE.pdf',
      'wsi' => 'CronogramaWSI.pdf',
      'wpdp' => 'CronogramaWPDP.pdf',
      'wiei' => 'CronogramaWIEI.pdf',
      'wcgiv' => 'CronogramaWCGIV.pdf',
      'wpsstr' => 'CronogramaWCGIV.pdf'
    }
    filename = file_hash.fetch(params[:id])
    extension = filename.split('.').last

    send_file(
      "#{Rails.root}/app/assets/images/#{filename}",
      filename: filename,
      type: "application/#{extension}",
      disposition: "inline; filename=#{filename}")
  end


  def download_slides1_course4
    send_file(
      "#{Rails.root}/app/assets/images/materials/course4/cursoLogicaParaCpmpClase1.pdf",
      filename: "cursoLogicaParaCpmpClase1.pdf",
      type: "application/pdf",
      disposition: "inline; filename=cursoLogicaParaCpmpClase1.pdf")
  end

  def download_slides2_course4
    send_file(
      "#{Rails.root}/app/assets/images/materials/course4/cursoLogicaParaCpmpClase2.pdf",
      filename: "cursoLogicaParaCpmpClas2.pdf",
      type: "application/pdf",
      disposition: "inline; filename=cursoLogicaParaCpmpClase2.pdf")
  end

    def download_slides4_course4
    send_file(
      "#{Rails.root}/app/assets/images/materials/course4/cursoLogicaParaCpmpClase4.pdf",
      filename: "cursoLogicaParaCpmpClas4.pdf",
      type: "application/pdf",
      disposition: "inline; filename=cursoLogicaParaCpmpClase4.pdf")
  end


  def download_requals_buggy_course4
    send_file(
      "#{Rails.root}/app/assets/images/materials/course4/rEqualsItsClosureBuggy.als",
      filename: "rEqualsItsClosureBuggy.als",
      disposition: "inline; filename=rEqualsItsClosureBuggy.als")
  end

  def download_requals_course4
    send_file(
      "#{Rails.root}/app/assets/images/materials/course4/rEqualsItsClosure.als",
      filename: "rEqualsItsClosure.als",
     
      disposition: "inline; filename=rEqualsItsClosure.als")
  end

    def download_lista_course4
    send_file(
      "#{Rails.root}/app/assets/images/materials/course4/Listas.als",
      filename: "Listas.als",
      disposition: "inline; filename=Listas.als")
  end


    def download_arbol_binario_course4
    send_file(
      "#{Rails.root}/app/assets/images/materials/course4/arbolBinario.als",
      filename: "arbolBinario.als",
      disposition: "inline; filename=arbolBinario.als")
  end

      def download_bin_tree_course4
    send_file(
      "#{Rails.root}/app/assets/images/materials/course4/BinTree.java",
      filename: "BinTree.java",
      disposition: "inline; filename=BinTree.java")
  end

      def download_bin_tree_test_course4
    send_file(
      "#{Rails.root}/app/assets/images/materials/course4/BinTreeTest.java",
      filename: "BinTreeTest.java",
      disposition: "inline; filename=BinTreeTest.java")
  end

      def download_slides3_course4
    send_file(
      "#{Rails.root}/app/assets/images/materials/course4/cursoLogicaParaCpmpClase3.pdf",
      filename: "cursoLogicaParaCpmpClase3.pdf",
      disposition: "inline; filename=cursoLogicaParaCpmpClase3.pdf")
  end

      def download_tutorial_course4
    send_file(
      "#{Rails.root}/app/assets/images/materials/course4/TutorialRelMiCS2009CACIC.pdf",
      filename: "TutorialRelMiCS2009CACIC.pdf",
      disposition: "inline; filename=TutorialRelMiCS2009CACIC.pdf")
  end


  def download_node_course4
    send_file(
      "#{Rails.root}/app/assets/images/materials/course4/Node.java",
      filename: "Node.java",
      disposition: "inline; filename=Node.java")
  end

  def download_result_course3
    send_file(
      "#{Rails.root}/app/assets/images/materials/course3/result.pdf",
      filename: "result.pdf",
      disposition: "inline; filename=result.pdf")
  end
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
