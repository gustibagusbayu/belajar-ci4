<?php namespace App\Controllers;

class Pages extends BaseController
{
	public function index()
	{
		$data = [
			'title' => 'Home | PAD Labs'
		];
		return view('pages/home', $data);
	}

	public function about()
	{
		$data = [
			'title' => 'About Me'
		];
		return view('pages/about', $data);
	}

	public function contact()
	{
		$data = [
			'title' => 'Contact US',
			'alamat' => [
			[
				'tipe' => 'Rumah',
				'alamat' => 'Jalan Wisnu No.51',
				'kota' => 'Tabanan'
			],
			[
				'tipe' => 'Kantor',
				'alamat' => 'Jalan Setia Budi No.17',
				'kota' => 'Denpasar'
			]
			]
		];
		return view('pages/contact', $data);
	}

	//--------------------------------------------------------------------

}
