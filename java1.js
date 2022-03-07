var namaBenar, alamatBenar, birthdateBenar, telephoneBenar, telpBenar, anggotaBenar, nAnggotaBenar;

function validasi_nama(nama,error){
	var nama = document.getElementById(nama); //mengambil elemen di HTML dengan id
	
	var harus = /^[a-zA-Z.\s]{2,100}$/; //mengatur user hanya akan menginput hanya huruf dan minimal 2 huruf
	if(!harus.test(nama.value)){
		document.getElementById(error).innerHTML = "Nama hanya boleh huruf, dan minimal 2 huruf";
		namaBenar=false;
	}
	else{
		document.getElementById(error).innerHTML = "";
		namaBenar=true;
	}
	toggle(); //-----memanggil fungsi toggle-----//
}

function validasi_alamat(){
	var alamat = document.getElementById("alamat");
	if(alamat.value == ""){
		document.getElementById("error_alamat").innerHTML = "Alamat harus diisi";
		alamatBenar=false;
	}
	else{
		var harus= /^[\w\s\W]{6,100}$/; //mengatur agar user menginput hanya angka dan nomor saja
		var hanyaAngka=/[a-zA-Z]/;
		if(!harus.test(alamat.value)){
			document.getElementById("error_alamat").innerHTML = "Alamat minimal harus berisi 6 huruf";
			alamatBenar=false;
		}
		else{
			if (!hanyaAngka.test(alamat.value)){
				document.getElementById("error_alamat").innerHTML = "alamat tidak boleh hanya angka";
				alamatBenar=false;
			}
			else{
				document.getElementById("error_alamat").innerHTML = "";
				alamatBenar=true;
			}
		}
	}
	toggle();
}

function validasi_birthdate(){
	var tanggal = document.getElementById("tanggal");
	if(tanggal.value == ""){
		document.getElementById("error_birthdate").innerHTML = "Tanggal harus diisi";
		birthdateBenar=false;
	}
	else{
		var harus = /^(199\d|200[0-1])-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$/;
		if(!harus.test(tanggal.value)){
			document.getElementById("error_birthdate").innerHTML = "Format Tanggal salah";
			birthdateBenar=false;
		}
		else{
			document.getElementById("error_birthdate").innerHTML = "";
			birthdateBenar=true;
		}
	}
	toggle();
}

function validasi_telephone(){
	var telephone = document.getElementById("telephone");
	if(telephone.value == ""){
		document.getElementById("error_telephone").innerHTML = "Nomor telepon harus diisi";
		telephoneBenar=false;
	}
	else{
		var harus = /^[0-9+]{11,100}$/;
		if(!harus.test(telephone.value)){
			document.getElementById("error_telephone").innerHTML = "Nomor telepon tidak boleh selain angka, dan minimal 11 angka";
			telephoneBenar=false;
		}
		else{
			document.getElementById("error_telephone").innerHTML = "";
			telephoneBenar=true;
		}
	}
	toggle();
}
function telp(){
	var pilih = document.getElementById("kode");
	if(pilih.value == "pilih"){
		document.getElementById("error_telephone").innerHTML = "Anda belum memilih";
		telpBenar=false;
	}
	else{
		var no = document.getElementById("telephone");
		if(no.value != ""){
			document.getElementById("telephone").value = document.getElementById("kode").value + no.value;
			telpBenar=false;
		}
		else{
			document.getElementById("telephone").value = document.getElementById("kode").value ;
			document.getElementById("error_telephone").innerHTML = "";
			telpBenar=true;
		}
	}
	toggle();
}
function validasi_anggota(){
	var anggota = document.myForm.jumAnggota;
	if(anggota.value == "0" || anggota.value == ""){
		anggotaBenar=false;
	}
	else if(anggota.value <=0 || anggota.value > 10){
		document.getElementById("form_anggota").innerHTML="";
	}
	else{
		anggotaBenar=true;
		document.getElementById("form_anggota").innerHTML = "";
		nAnggotaBenar==0;
		for(var a=2; a<=anggota.value; a++){ // mengulang sebanyak nilai anggota
			document.getElementById("form_anggota").innerHTML += "<hr><h2>Anggota "+a+"</h2><br><br> Nama Anggota "+a+" <input type='text' name='nama_"+a+"' id='anggota"+a+"' placeholder='nama'><div id='error_namaAnggota"+a+"' class='eror'><br>";
			
			document.getElementById("form_anggota").innerHTML += "<div class='eror' id='errora"+a+"'></div>";
			document.getElementById("anggota"+a).setAttribute("onblur","validasi_nama('anggota"+a+"','errora"+a+"')");
			//setAttribute(nama atribut,nilai atribut) berfungsi untuk menambah atribut sebuah elemen
			document.getElementById("form_anggota").innerHTML += "NIK "+a+" <input type='text' name='nik_"+a+"' id='nik"+a+"' placeholder='0000000000000000'><br>";
			document.getElementById("form_anggota").innerHTML += "<br>Tanggal Lahir "+a+" <input type='text' name='tgl_lahir_"+a+"' id='lahir"+a+"' placeholder='yyyy-mm-dd'><br>";
			document.getElementById("form_anggota").innerHTML += "<br>Jenis Kelamin"+a+"<br><label for='male'>Laki-laki</label> <input name='jk_"+a+"' id='male"+a+" value='L' type='radio'> <label for='female'>Perempuan</label> <input name='jk_"+a+"' id='female"+a+" value='P' type='radio'><br>"
			document.getElementById("form_anggota").innerHTML += "<br>Alamat Lengkap"+a+"<textarea name='alamat_"+a+"' id='alamat"+a+"placeholder='Perum. Cendana 1 Blok F RT.03 RW.10 No.20'>"
			document.getElementById("form_anggota").innerHTML += "<br>No Telp"+a+"<textarea name='no_tlp_"+a+"' id='no_tlp_"+a+"placeholder='xxxxxxxxx'>"
		}
	}
}

//---fungsi untuk mendisable dan enable tombol submit---//
function toggle(){
	if(namaBenar==true && alamatBenar==true && birthdateBenar==true && telephoneBenar==true && telpBenar==true){
		if(document.getElementById("list").checked == true){
			document.getElementById("button").disabled = false;
		}
		
	}
	else{
		document.getElementById("button").disabled = true;
	}
}