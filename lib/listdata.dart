import 'package:data_dosen/update.dart';
import 'package:data_dosen/main.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ListItemsData extends StatefulWidget {
  final List list;
  final int index;
  const ListItemsData({Key? key, required this.list, required this.index})
      : super(key: key);

  @override
  State<ListItemsData> createState() => _ListItemsDataState();
}

class _ListItemsDataState extends State<ListItemsData> {
  void deleteData() {
    var url = "http://10.0.2.2/studi_kasus/deletedata.php";
    http.post(Uri.parse(url), body: {'id': widget.list[widget.index]['id']});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${widget.list[widget.index]['nama_dosen']}")),
      body: Card(
        child: Center(
          child: Column(children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(top: 30.0),
            ),
            Text(
              widget.list[widget.index]['nama_dosen'],
              style: const TextStyle(fontSize: 20.0),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Padding(padding: EdgeInsets.only(top: 10)),
                Text(
                  "E-mail    : ${widget.list[widget.index]['email_dosen']}",
                  style: const TextStyle(fontSize: 18.0),
                ),
                Text(
                  "Ktp         : ${widget.list[widget.index]['ktp_dosen']}",
                  style: const TextStyle(fontSize: 18.0),
                ),
                Text(
                  "HP          : ${widget.list[widget.index]['nohp_dosen']}",
                  style: const TextStyle(fontSize: 18.0),
                ),
                Text(
                  "Alamat  : ${widget.list[widget.index]['alamat_dosen']}",
                  style: const TextStyle(fontSize: 18.0),
                ),
                Text(
                  "Matkul   : ${widget.list[widget.index]['prodi_dosen']}",
                  style: const TextStyle(fontSize: 18.0),
                ),
                Text(
                  "Jadwal   : ${widget.list[widget.index]['jadwal_dosen']}",
                  style: const TextStyle(fontSize: 18.0),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30.0),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(
                      height: 50,
                      child: ElevatedButton.icon(
                        icon: const Icon(
                          Icons.edit,
                          color: Color.fromARGB(255, 253, 253, 253),
                        ),
                        label: const Text('Edit Data'),
                        onPressed: () =>
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => UpdateData(
                                      list: widget.list,
                                      index: widget.index,
                                    ))),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(5)),
                    SizedBox(
                      height: 50,
                      child: ElevatedButton.icon(
                        icon: const Icon(
                          Icons.delete,
                          color: Color.fromARGB(255, 253, 253, 253),
                        ),
                        label: const Text('Hapus Data'),
                        onPressed: () => deleteData(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
