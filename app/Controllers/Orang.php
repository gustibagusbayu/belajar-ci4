<?php

namespace App\Controllers;

use App\Models\OrangModel;

class Orang extends BaseController
{
    // buat constructor biar bisa dipanggil fungsi lain dan turunannya
    protected $orangModel;
    public function __construct()
    {
        $this->orangModel = new OrangModel();
    }
    public function index()
    {
        // mengambil jumlah page diurl
        $currentPage = $this->request->getVar('page_orang') ? $this->request->getVar('page_orang') : 1;

        $keyword = $this->request->getVar('keyword');
        if ($keyword) {
            $orang = $this->orangModel->search($keyword);
        } else {
            $orang = $this->orangModel;
        }

        $data = [
            'title' => 'Daftar Orang',
            // 'orang' => $this->orangModel->findAll()
            'orang' => $orang->paginate(6, 'orang'),
            'pager' => $this->orangModel->pager,
            'currentPage' => $currentPage
        ];

        // $komikModel = new \App\Models\KomikModel();
        // $komikModel = new KomikModel();

        return view('orang/index', $data);
    }

    //--------------------------------------------------------------------

}
