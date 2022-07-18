import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UpdateData extends StatefulWidget {
  final List list;
  final int index;

  const UpdateData({Key? key, required this.list, required this.index})
      : super(key: key);

  @override
  State<UpdateData> createState() => _UpdateDataState();
}

class _UpdateDataState extends State<UpdateData> {
  late TextEditingController controllerKtp;
  late TextEditingController controllerNama;
  late TextEditingController controllerAlamat;
  late TextEditingController controllerEmail;
  late TextEditingController controllerNohp;
  late TextEditingController controllerProdi;
  late TextEditingController controllerJadwal;

  void editData() {
    var url = "http://10.0.2.2/studi_kasus/updatedata.php";

    http.post(Uri.parse(url), body: {
      "id": widget.list[widget.index]['id'],
      "ktpdosen": controllerKtp.text,
      "namadosen": controllerNama.text,
      "alamatdosen": controllerAlamat.text,
      "emaildosen": controllerEmail.text,
      "nohpdosen": controllerNohp.text,
      "prodidosen": controllerProdi.text,
      "jadwaldosen": controllerJadwal.text,
    });
  }

  @override
  void initState() {
    controllerKtp =
        TextEditingController(text: widget.list[widget.index]['ktp_dosen']);
    controllerNama =
        TextEditingController(text: widget.list[widget.index]['nama_dosen']);
    controllerAlamat =
        TextEditingController(text: widget.list[widget.index]['alamat_dosen']);
    controllerEmail =
        TextEditingController(text: widget.list[widget.index]['email_dosen']);
    controllerNohp =
        TextEditingController(text: widget.list[widget.index]['nohp_dosen']);
    controllerProdi =
        TextEditingController(text: widget.list[widget.index]['prodi_dosen']);
    controllerJadwal =
        TextEditingController(text: widget.list[widget.index]['jadwal_dosen']);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: controllerKtp,
                  decoration: InputDecoration(
                      labelText: "KTP Dosen",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: controllerNama,
                  decoration: InputDecoration(
                      labelText: "Nama Dosen",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: controllerAlamat,
                  decoration: InputDecoration(
                      labelText: "Alamat Dosen",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: controllerEmail,
                  decoration: InputDecoration(
                      labelText: "Email Dosen",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: controllerNohp,
                  decoration: InputDecoration(
                      labelText: "No-Hp Dosen",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: controllerProdi,
                  decoration: InputDecoration(
                      labelText: "Prodi Dosen",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: controllerJadwal,
                  decoration: InputDecoration(
                      labelText: "Jadwal Dosen",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                const Padding(padding: EdgeInsets.all(8)),
                SizedBox(
                  height: 50,
                  child: ElevatedButton.icon(
                    icon: const Icon(
                      Icons.add_to_drive,
                      color: Color.fromARGB(255, 253, 253, 253),
                    ),
                    label: const Text('Update Data'),
                    onPressed: () {
                      editData();
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
