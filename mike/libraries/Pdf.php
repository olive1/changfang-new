<?php if (!defined('BASEPATH')) exit('No direct access allowed.');
/**
 * 
 * pdf
 * 
 */

class Pdf
{
	/**
    * CI句柄
    * 
    * @access private
    * @var object
    */
	private $_CI;
    
    private $pdf;

	 /**
     * 构造函数
     * 
     * @access public
     * @return void
     */
    public function __construct()
    {
        /** 获取CI句柄 */
		$this->_CI = & get_instance();
        $this->pdf = $this->_CI->load->library("tcpdf/Tcpdf");
		log_message('debug', "Pdf library Class Initialized");
    }
        
    /**
     * 
     */
    public function create($content, $file_path_name)
    {
        $pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
        $pdf->SetCreator(PDF_CREATOR);
        
        $pdf->SetHeaderData("logo.png", 70, '' . '', '');

        $pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);
        $pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
        $pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
        $pdf->SetFooterMargin(PDF_MARGIN_FOOTER);
        $pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);
        $pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);


        $pdf->AddPage();
        $pdf->setPageMark();
        $pdf->SetFont('stsongstdlight', '', 13);
        
        $pdf->writeHTML($content, true, false, false, false, '');
        $pdf->lastPage();
        
        $is_pdf = $pdf->Output($file_path_name, 'F');
        
        return $is_pdf;
    }
    
    
        
    
    
}

/* End of file User.php */
/* Location: ./application/libraries/User.php */