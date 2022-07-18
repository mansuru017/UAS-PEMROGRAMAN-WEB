import 'package:data_dosen/main.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CreateData extends StatefulWidget {
  const CreateData({Key? key}) : super(key: key);

  @override
  State<CreateData> createState() => _CreateDataState();
}

class _CreateDataState extends State<CreateData> {
  TextEditingController controllerId = TextEditingController();
  TextEditingController controllerKtp = TextEditingController();
  TextEditingController controllerNama = TextEditingController();
  TextEditingController controllerAlamat = TextEditingController();
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerNohp = TextEditingController();
  TextEditingController controllerProdi = TextEditingController();
  TextEditingController controllerJadwal = TextEditingController();

  Future<void> addData() async {
    await http
        .post(Uri.parse('http://10.0.2.2/studi_kasus/createdata.php'), body: {
      "id": controllerId.text,
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
                  controller: controllerId,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      labelText: "Id",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: controllerKtp,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      labelText: "KTP Dosen",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: controllerNama,
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      labelText: "Nama Dosen",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: controllerAlamat,
                  keyboardType: TextInputType.streetAddress,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      labelText: "Alamat Dosen",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: controllerEmail,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      labelText: "Email Dosen",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: controllerNohp,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      labelText: "No-Hp Dosen",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: controllerProdi,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      labelText: "Prodi Dosen",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: controllerJadwal,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      labelText: "Jadwal Dosen",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                SizedBox(
                  height: 50,
                  child: ElevatedButton.icon(
                    icon: const Icon(
                      Icons.add_to_drive,
                      color: Color.fromARGB(255, 253, 253, 253),
                    ),
                    label: const Text('Tambah Data'),
                    onPressed: () {
                      addData();
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 0, 180, 252),
        onPressed: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: ((context) => const Navbar()))),
        splashColor: Colors.red,
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
