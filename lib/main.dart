/*
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:grtretretretert/pages/component/custonfild.dart';
import 'package:path_provider/path_provider.dart';

import 'package:pdf/widgets.dart' as pw;
import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:shared_preferences/shared_preferences.dart';





void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      home: PdfPreviewScreen(),
    );
  }
}



class DashedBorderPainter extends CustomPainter {
  final bool? top;
  final bool? direito;
  final bool? esquerdo;
  final bool? baixo;

  DashedBorderPainter({
    this.top=true,
    this.direito=true,
    this.esquerdo=true,
    this.baixo=true,

  });




  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black // Cor da borda
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5; // Largura da borda

    final path = Path();
    const dashWidth = 6.0; // Largura do traço
    const dashSpace = 6.0; // Espaço entre traços
    const borderSpacing = 5.0; // Espaçamento da borda em relação ao contêiner

    // Desenhar a borda ao redor do contêiner com espaçamento
    for (double i = borderSpacing; i < size.height - borderSpacing; i += dashWidth + dashSpace) {

      if(esquerdo == true) {
        // Lado esquerdo
        path.moveTo(borderSpacing, i);
        path.lineTo(borderSpacing, i + dashWidth);
      }
      if(direito == true) {
        // Lado direito
        path.moveTo(size.width - borderSpacing, i);
        path.lineTo(size.width - borderSpacing, i + dashWidth);
      } }

    for (double i = borderSpacing; i < size.width - borderSpacing; i += dashWidth + dashSpace) {
      // Parte superior

      if(top == true) {
        path.moveTo(i, borderSpacing);
        path.lineTo(i + dashWidth, borderSpacing);
      }
      if(baixo == true) {
        // Parte inferior
        path.moveTo(i, size.height - borderSpacing);
        path.lineTo(i + dashWidth, size.height - borderSpacing);
      } }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class PdfPreviewScreen extends StatefulWidget {
  @override
  _PdfPreviewScreenState createState() => _PdfPreviewScreenState();
}

class _PdfPreviewScreenState extends State<PdfPreviewScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();

  Future<Uint8List> generatePdf() async {
    final pdf = pw.Document();

    pdf.addPage(
      pw.Page(
        build: (context) => pw.Center(
          child: pw.Column(
            mainAxisAlignment: pw.MainAxisAlignment.center,
            children: [
              pw.Text('Informações do Usuário'),
              pw.SizedBox(height: 20),
              pw.Text('Nome: ${_nameController.text}'),
              pw.Text('Idade: ${_ageController.text}'),
            ],
          ),
        ),
      ),
    );

    return pdf.save();
  }

  Future<String> getPdfPath(Uint8List pdfBytes) async {
    final tempDir = await getTemporaryDirectory();
    final tempPath = tempDir.path;
    const tempFileName = 'temp_pdf.pdf';
    final tempFilePath = '$tempPath/$tempFileName';

    final file = File(tempFilePath);
    await file.writeAsBytes(pdfBytes);

    return tempFilePath;
  }

  Future<void> savePdf(Uint8List pdfBytes) async {
    final pdfBase64 = base64Encode(pdfBytes);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('saved_pdf', pdfBase64);


  }
  final double tamanho = -11.5;
  final List<double> widgetcontene = [329,484];
  final double LAGURA = -30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Row(

          children: [











            Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  CustomTextField(
                    controller: _ageController,

                    labelText: 'Nome do cliente',
                    obscureText: false,





                  ),


                  Container(

                    width: widgetcontene[0],
                    height: widgetcontene[1],
                    clipBehavior: Clip.antiAlias,




                    decoration: BoxDecoration(


                      gradient: LinearGradient(
                        begin: Alignment(0.00, -1.00),
                        end: Alignment(0, 1),
                        colors: [Color(0xFF2E5EFF),Color(0xCB2E5EFF), Color(
                            0xBA2E5EFF),Color(0xED2E5EFF)],
                      ),


                    ),




                    // child: CustomPaint(
                    // painter: DashedBorderPainter(),
                    //),




                    child: Stack(
                      children: [





                        Positioned(
                          left: 0,
                          top: 7,




                          child: Container(
                            width: 334.90,
                            height: 485,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 5.74,
                                  top: 222.95,
                                  child: Container(
                                    width: 324.06,
                                    height: 35.22,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0,
                                          top: 0,
                                          child: Opacity(
                                            opacity: 0.99,
                                            child: Container(
                                              width: 324.06,
                                              height: 35.22,
                                              decoration: ShapeDecoration(
                                                color: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                    width: 1,
                                                    color: Colors.black.withOpacity(0.6700000166893005),
                                                  ),
                                                  borderRadius: BorderRadius.circular(4),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),




                                        Positioned(
                                          left: 4.44,
                                          top: 4.14,
                                          child: SizedBox(
                                            width: 316.29,
                                            height: 26.93,
                                            child: Opacity(
                                              opacity: 0.90,
                                              child:  CustomTextField(
                                                controller: _ageController,

                                                labelText: 'Nome do cliente',
                                                obscureText: false,





                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 168.88,
                                  top:  114.19,
                                  child: Container(
                                    width: 150.62,
                                    height: 25.89,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0,
                                          top: 0,
                                          child: Opacity(
                                            opacity: 0.99,
                                            child: Container(
                                              width: 150.62,
                                              height: 25.89,
                                              decoration: ShapeDecoration(
                                                color: Color(0xFFFCFDFF),
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                    width: 1,
                                                    color: Colors.black.withOpacity(0.6700000166893005),
                                                  ),
                                                  borderRadius: BorderRadius.circular(4),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 4.18,
                                          top: 3.11,
                                          child: SizedBox(
                                            width: 143.30,
                                            height: 19.68,
                                            child: Opacity(
                                              opacity: 0.90,
                                              child: Text(
                                                'Terça - feira',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w400,
                                                  height: 0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 17.05,
                                  top: 280.63,
                                  child: Container(
                                    width: 300,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 0.6,
                                          strokeAlign: BorderSide.strokeAlignCenter,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 35.74,
                                  top: 462.00,
                                  child: Container(
                                    width: 279.46,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 1,
                                          strokeAlign: BorderSide.strokeAlignCenter,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 19.28,
                                  top: 205.34,
                                  child: SizedBox(
                                    width: 315.63,
                                    height: 11.39,
                                    child: Text(
                                      'Próxima Troca de óleo',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 0.05,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 206.04,
                                  child: SizedBox(
                                    width: 117.04,
                                    height: 12.06,
                                    child: Transform(
                                      transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-1.57),
                                      child: Text(
                                        'Pá carregadeira',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                          height: 0.12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 17.36,
                                  top: 267.48,
                                  child: SizedBox(
                                    width: 315.57,
                                    height: 13.47,
                                    child: Text(
                                      'Filtros',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600,
                                        height: 0.05,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 144,
                                  top: 472.57,
                                  child: SizedBox(
                                    width: 65.76,
                                    height: 12.43,
                                    child: Text(
                                      'Supervisor',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 11,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w300,
                                        height: 0.10,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 16,
                                  top: 0,
                                  child: SizedBox(
                                    width: 163.12,
                                    height: 30.35,
                                    child: Text(
                                      'Última troca',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFFFF0000),
                                        fontSize: 24,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 170.52,
                                  top: 96.58,
                                  child: SizedBox(
                                    width: 162.20,
                                    height: 17.61,
                                    child: Text(
                                      'Calibrar e lubrificar',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 281.91,
                          top: 325.24,
                          child: Container(
                            width: 22.80,
                            height: 14.50,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                          ),
                        ),
                        Positioned(
                          left: 21,
                          top: 45,
                          child: Container(
                            width: 298.69,
                            height: 39.36,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 298.69,
                                    height: 39.36,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0,
                                          top: 0,
                                          child: Opacity(
                                            opacity: 0.99,
                                            child: Container(
                                              width: 298.69,
                                              height: 39.36,
                                              decoration: ShapeDecoration(
                                                color: Color(0xFFFCFDFF),
                                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 8.39,
                                          top: 4.72,
                                          child: SizedBox(
                                            width: 287.30,
                                            height: 29.91,
                                            child: Opacity(
                                              opacity: 0.90,
                                              child: Text(
                                                'Terça - feira',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFFFCFDFF),
                                                  fontSize: 14,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w400,
                                                  height: 0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8.82,
                                  top: 0,
                                  child: SizedBox(
                                    width: 281.06,
                                    height: 39.36,
                                    child: Text(
                                      'cdfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 141,
                          top: 384,
                          child: Container(width: 21, height: 14),
                        ),
                        Positioned(
                          left: 244,
                          top: 5,
                          child: Container(
                            width: 82.06,
                            height: 34.47,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 82.06,
                                    height: 34.47,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFFBFDFF),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 0.10,
                                          color: Colors.black.withOpacity(0.6700000166893005),
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 82.06,
                                    height: 34.47,
                                    decoration: ShapeDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage("https://via.placeholder.com/82x34"),
                                        fit: BoxFit.fill,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 27,
                          top: 90,
                          child: Container(
                            width: 113,
                            height: 113,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 113,
                                    height: 113,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFF7FAFF),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 1.90,
                                          color: Colors.black.withOpacity(0.6700000166893005),
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8.48,
                                  top: 8.47,
                                  child: Container(
                                    width: 95.11,
                                    height: 95.11,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage("https://via.placeholder.com/95x95"),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 6,
                          top: tamanho + 326.11,
                          child: Container(
                            width: LAGURA + 150.71,
                            height: 26.16,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Opacity(
                                    opacity: 0.99,
                                    child: Container(
                                      width: LAGURA + 150.71,
                                      height: 26.16,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFFCFDFF),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            width: 1,
                                            color: Colors.black.withOpacity(0.6700000166893005),
                                          ),
                                          borderRadius: BorderRadius.circular(4),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 4.41,
                                  top: 3.14,
                                  child: SizedBox(
                                    width: 151,
                                    height: 19.88,
                                    child: Opacity(
                                      opacity: 0.90,
                                      child: Text(
                                        '12345678911234567',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 170,
                          top: tamanho + 327,
                          child: Container(
                            width: LAGURA + 150.16,
                            height: 26.16,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Opacity(
                                    opacity: 0.99,
                                    child: Container(
                                      width: LAGURA + 150.16,
                                      height: 26.16,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFFCFDFF),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            width: 1,
                                            color: Colors.black.withOpacity(0.6700000166893005),
                                          ),
                                          borderRadius: BorderRadius.circular(4),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 4.39,
                                  top: 3.14,
                                  child: SizedBox(
                                    width: LAGURA + 150.48,
                                    height: 19.88,
                                    child: Opacity(
                                      opacity: 0.90,
                                      child: Text(
                                        '123456',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 170,
                          top: tamanho + 356,
                          child: Container(
                            width: LAGURA + 150,
                            height: 26.16,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Opacity(
                                    opacity: 0.99,
                                    child: Container(
                                      width: LAGURA + 150,
                                      height: 26.16,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFFCFDFF),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            width: 1,
                                            color: Colors.black.withOpacity(0.6700000166893005),
                                          ),
                                          borderRadius: BorderRadius.circular(4),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 4.39,
                                  top: 3.14,
                                  child: SizedBox(
                                    width: 150.32,
                                    height: 19.88,
                                    child: Opacity(
                                      opacity: 0.90,
                                      child: Text(
                                        '05 - 07 - 2023',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 6,
                          top: tamanho + 355.41,
                          child: Container(
                            width: LAGURA + 150.71,
                            height: 26.16,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Opacity(
                                    opacity: 0.99,
                                    child: Container(
                                      width: LAGURA + 150.71,
                                      height: 26.16,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFFCFDFF),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            width: 1,
                                            color: Colors.black.withOpacity(0.6700000166893005),
                                          ),
                                          borderRadius: BorderRadius.circular(4),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 4.41,
                                  top: 3.14,
                                  child: SizedBox(
                                    width: 151,
                                    height: 19.88,
                                    child: Opacity(
                                      opacity: 0.90,
                                      child: Text(
                                        '05 - 07 - 2023',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 7.10,
                          top: tamanho + 406.68,
                          child: Container(
                            width: LAGURA + 150.71,
                            height: 26.16,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Opacity(
                                    opacity: 0.99,
                                    child: Container(
                                      width: LAGURA + 150.71,
                                      height: 26.16,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFFCFDFF),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            width: 1,
                                            color: Colors.black.withOpacity(0.6700000166893005),
                                          ),
                                          borderRadius: BorderRadius.circular(4),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 4.41,
                                  top: 3.14,
                                  child: SizedBox(
                                    width: 151,
                                    height: 19.88,
                                    child: Opacity(
                                      opacity: 0.90,
                                      child: Text(
                                        '12345678910',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 7.10,
                          top: tamanho + 435.98,
                          child: Container(
                            width: LAGURA + 150.71,
                            height: 26.16,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Opacity(
                                    opacity: 0.99,
                                    child: Container(
                                      width: LAGURA + 150.71,
                                      height: 26.16,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFFCFDFF),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            width: 1,
                                            color: Colors.black.withOpacity(0.6700000166893005),
                                          ),
                                          borderRadius: BorderRadius.circular(4),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 4.41,
                                  top: 3.14,
                                  child: SizedBox(
                                    width: 151,
                                    height: 19.88,
                                    child: Opacity(
                                      opacity: 0.90,
                                      child: Text(
                                        '05 - 07 - 2023',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 170.22,
                          top:tamanho + 406.68,
                          child: Container(
                            width: 156.86,
                            height: 26.16,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Opacity(
                                    opacity: 0.99,
                                    child: Container(
                                      width: 156.86,
                                      height: 26.16,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFFCFDFF),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            width: 1,
                                            color: Colors.black.withOpacity(0.6700000166893005),
                                          ),
                                          borderRadius: BorderRadius.circular(4),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 4.36,
                                  top: 3.14,
                                  child: SizedBox(
                                    width: 149.24,
                                    height: 19.88,
                                    child: Opacity(
                                      opacity: 0.90,
                                      child: Text(
                                        '12345678910',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 170,
                          top:tamanho + 436,
                          child: Container(
                            width: 157,
                            height: 26.16,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Opacity(
                                    opacity: 0.99,
                                    child: Container(
                                      width: 157,
                                      height: 26.16,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFFCFDFF),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            width: 1,
                                            color: Colors.black.withOpacity(0.6700000166893005),
                                          ),
                                          borderRadius: BorderRadius.circular(4),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 4.36,
                                  top:  3.14,
                                  child: SizedBox(
                                    width: 149.37,
                                    height: 19.88,
                                    child: Opacity(
                                      opacity: 0.90,
                                      child: Text(
                                        '05 - 07 - 2023',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 8.20,
                          top: tamanho + 307.27,
                          child: SizedBox(
                            width: 154.30,
                            height: 18.84,
                            child: Text(
                              'Ar interno',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 171.32,
                          top:tamanho + 307.27,
                          child: SizedBox(
                            width: 154.30,
                            height: 18.84,
                            child: Text(
                              'Ar externo',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 173.53,
                          top:tamanho + 387.85,
                          child: SizedBox(
                            width: 154.30,
                            height: 18.84,
                            child: Text(
                              'Combustível',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 8.20,
                          top:tamanho + 387.85,
                          child: SizedBox(
                            width: 154.30,
                            height: 18.84,
                            child: Text(
                              'Separ. d’ água',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 121.03,
                          top:tamanho + 306,
                          child: Container(
                            width: 21,
                            height: 14,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage("https://via.placeholder.com/21x14"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 132.03,
                          top: tamanho + 382,
                          child: Container(
                            width: 21,
                            height: 14,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage("https://via.placeholder.com/21x14"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 271.03,
                          top: tamanho + 306,
                          child: Container(
                            width: 21,
                            height: 14,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage("https://via.placeholder.com/21x14"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 288,
                          top:tamanho + 386,
                          child: Container(
                            width: 23,
                            height: 19,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage("https://via.placeholder.com/23x19"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),


                  CustomPaint(
                    painter: DashedBorderPainter(direito: false),
                    size: Size(widgetcontene[0] + 11, widgetcontene[1] + 11),

                  ),







                ]),


            Stack(
                alignment: AlignmentDirectional.center,
                children: [



                  // Padding(padding: EdgeInsetsDirectional.fromSTEB(0, 0, 3, 0)),

                  Container(
                    width: widgetcontene[0],
                    height: widgetcontene[1],
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.00, -1.00),
                        end: Alignment(0, 1),
                        colors: [Color(0xC97F9CFE), Color(0xFF7F9DFE)],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 334.90,
                            height: 492,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 5.74,
                                  top: 229.95,
                                  child: Container(
                                    width: 324.06,
                                    height: 35.22,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0,
                                          top: 0,
                                          child: Opacity(
                                            opacity: 0.99,
                                            child: Container(
                                              width: 324.06,
                                              height: 35.22,
                                              decoration: ShapeDecoration(
                                                color: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                    width: 1,
                                                    color: Colors.black.withOpacity(0.6700000166893005),
                                                  ),
                                                  borderRadius: BorderRadius.circular(4),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 4.44,
                                          top: 4.14,
                                          child: SizedBox(
                                            width: 316.29,
                                            height: 26.93,
                                            child: Opacity(
                                              opacity: 0.90,








































                                              /*Text(
                                          '420',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 25,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                          ),
                                        ),*/

                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 6,
                                  top: tamanho + 344.92,
                                  child: Container(
                                    width: 156,
                                    height: 25.89,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0,
                                          top: 0,
                                          child: Opacity(
                                            opacity: 0.99,
                                            child: Container(
                                              width: 156,
                                              height: 25.89,
                                              decoration: ShapeDecoration(
                                                color: Color(0xFFFCFDFF),
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                    width: 1,
                                                    color: Colors.black.withOpacity(0.6700000166893005),
                                                  ),
                                                  borderRadius: BorderRadius.circular(4),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 4.33,
                                          top: 3.11,
                                          child: SizedBox(
                                            width: 148.42,
                                            height: 19.68,
                                            child: Opacity(
                                              opacity: 0.90,
                                              child: Text(
                                                '12345678910',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 13,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w400,
                                                  height: 0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 6,
                                  top: tamanho + 403.96,
                                  child: Container(
                                    width: 156,
                                    height: 25.89,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0,
                                          top: 0,
                                          child: Opacity(
                                            opacity: 0.99,
                                            child: Container(
                                              width: 156,
                                              height: 25.89,
                                              decoration: ShapeDecoration(
                                                color: Color(0xFFFCFDFF),
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                    width: 1,
                                                    color: Colors.black.withOpacity(0.6700000166893005),
                                                  ),
                                                  borderRadius: BorderRadius.circular(4),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 4.33,
                                          top: 3.11,
                                          child: SizedBox(
                                            width: 148.42,
                                            height: 19.68,
                                            child: Opacity(
                                              opacity: 0.90,
                                              child: Text(
                                                '12345678910',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 13,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w400,
                                                  height: 0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 170,
                                  top: tamanho + 404,
                                  child: Container(
                                    width: 156,
                                    height: 25.89,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0,
                                          top: 0,
                                          child: Opacity(
                                            opacity: 0.99,
                                            child: Container(
                                              width: 156,
                                              height: 25.89,
                                              decoration: ShapeDecoration(
                                                color: Color(0xFFFCFDFF),
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                    width: 1,
                                                    color: Colors.black.withOpacity(0.6700000166893005),
                                                  ),
                                                  borderRadius: BorderRadius.circular(4),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 4.33,
                                          top: 3.11,
                                          child: SizedBox(
                                            width: 148.42,
                                            height: 19.68,
                                            child: Opacity(
                                              opacity: 0.90,
                                              child: Text(
                                                '12345678910',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 13,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w400,
                                                  height: 0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 169.92,
                                  top: tamanho + 344.92,
                                  child: Container(
                                    width: 156,
                                    height: 25.89,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0,
                                          top: 0,
                                          child: Opacity(
                                            opacity: 0.99,
                                            child: Container(
                                              width: 156,
                                              height: 25.89,
                                              decoration: ShapeDecoration(
                                                color: Color(0xFFFCFDFF),
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                    width: 1,
                                                    color: Colors.black.withOpacity(0.6700000166893005),
                                                  ),
                                                  borderRadius: BorderRadius.circular(4),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 4.33,
                                          top: 3.11,
                                          child: SizedBox(
                                            width: 148.42,
                                            height: 19.68,
                                            child: Opacity(
                                              opacity: 0.90,
                                              child: Text(
                                                '12345678910',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 13,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w400,
                                                  height: 0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 168.88,
                                  top:  121.19,
                                  child: Container(
                                    width: 150.62,
                                    height: 25.89,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0,
                                          top: 0,
                                          child: Opacity(
                                            opacity: 0.99,
                                            child: Container(
                                              width: 150.62,
                                              height: 25.89,
                                              decoration: ShapeDecoration(
                                                color: Color(0xFFFCFDFF),
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                    width: 1,
                                                    color: Colors.black.withOpacity(0.6700000166893005),
                                                  ),
                                                  borderRadius: BorderRadius.circular(4),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 4.18,
                                          top: 3.11,
                                          child: SizedBox(
                                            width: 143.30,
                                            height: 19.68,
                                            child: Opacity(
                                              opacity: 0.90,
                                              child: Text(
                                                'Terça - feira',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w400,
                                                  height: 0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 17.05,
                                  top: 293.63,
                                  child: Container(
                                    width: 300,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 0.5,
                                          strokeAlign: BorderSide.strokeAlignCenter,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 35.74,
                                  top: 468.50,
                                  child: Container(
                                    width: 279.46,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 1,
                                          strokeAlign: BorderSide.strokeAlignCenter,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 19.28,
                                  top: 212.34,
                                  child: SizedBox(
                                    width: 315.63,
                                    height: 11.39,
                                    child: Text(
                                      'Próxima Troca de óleo',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 0.05,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 213.04,
                                  child: SizedBox(
                                    width: 117.04,
                                    height: 12.06,
                                    child: Transform(
                                      transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-1.57),
                                      child: Text(
                                        'Pá carregadeira',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                          height: 0.12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 17.36,
                                  top: 274.48,
                                  child: SizedBox(
                                    width: 315.57,
                                    height: 13.47,
                                    child: Text(
                                      'Filtros',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600,
                                        height: 0.05,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 144,
                                  top: 479.57,
                                  child: SizedBox(
                                    width: 65.76,
                                    height: 12.43,
                                    child: Text(
                                      'Supervisor',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 11,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w300,
                                        height: 0.10,
                                      ),
                                    ),
                                  ),
                                ),









                                Positioned(
                                  left: 18.18,
                                  top:  tamanho + 326.27,
                                  child: SizedBox(
                                    width: 153.43,
                                    height: 18.64,
                                    child: Text(
                                      'Ar interno',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 180.38,
                                  top: tamanho + 326.27,
                                  child: SizedBox(
                                    width: 153.43,
                                    height: 18.64,
                                    child: Text(
                                      'Ar externo',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 23.66,
                                  top: 0,
                                  child: SizedBox(
                                    width: 179.73,
                                    height: 30.04,
                                    child: Text(
                                      'Próxima troca',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF008000),
                                        fontSize: 24,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 170.52,
                                  top: 103.58,
                                  child: SizedBox(
                                    width: 162.20,
                                    height: 17.61,
                                    child: Text(
                                      'Calibrar e lubrificar',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 180.38,
                                  top: tamanho + 385.31,
                                  child: SizedBox(
                                    width: 153.43,
                                    height: 18.64,
                                    child: Text(
                                      'Combustível',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 18.18,
                                  top: tamanho + 385.31,
                                  child: SizedBox(
                                    width: 153.43,
                                    height: 18.64,
                                    child: Text(
                                      'Separ. d’ água',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ),














                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 128.82,
                          top:   328.35,
                          child: Container(
                            width: 22.80,
                            height: 14.50,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 22.80,
                                    height: 14.50,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage("https://via.placeholder.com/23x15"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 281.91,
                          top:  325.24,
                          child: Container(
                            width: 22.80,
                            height: 14.50,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                          ),
                        ),
                        Positioned(
                          left: 294.94,
                          top: 377.03,
                          child: Container(
                            width: 29.32,
                            height: 30.04,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 6.21,
                                  child: Container(
                                    width: 24.97,
                                    height: 19.68,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage("https://via.placeholder.com/25x20"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 21,
                          top:  45,
                          child: Container(
                            width: 298.69,
                            height: 39.36,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 298.69,
                                    height: 39.36,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0,
                                          top: 0,
                                          child: Opacity(
                                            opacity: 0.99,
                                            child: Container(
                                              width: 298.69,
                                              height: 39.36,
                                              decoration: ShapeDecoration(
                                                color: Color(0xFFFCFDFF),
                                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 8.39,
                                          top: 4.72,
                                          child: SizedBox(
                                            width: 287.30,
                                            height: 29.91,
                                            child: Opacity(
                                              opacity: 0.90,
                                              child: Text(
                                                'Terça - feira',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFFFCFDFF),
                                                  fontSize: 14,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w400,
                                                  height: 0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8.82,
                                  top: 0,
                                  child: SizedBox(
                                    width: 281.06,
                                    height: 39.36,
                                    child: Text(
                                      'cdfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 293,
                          top: 328,
                          child: Container(
                            width: 21,
                            height: 14,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage("https://via.placeholder.com/21x14"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 141,
                          top: 384,
                          child: Container(
                            width: 21,
                            height: 14,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage("https://via.placeholder.com/21x14"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 244,
                          top: 5,
                          child: Container(
                            width: 82.06,
                            height: 34.47,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 82.06,
                                    height: 34.47,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFFBFDFF),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 0.10,
                                          color: Colors.black.withOpacity(0.6700000166893005),
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 82.06,
                                    height: 34.47,
                                    decoration: ShapeDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage("https://via.placeholder.com/82x34"),
                                        fit: BoxFit.fill,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 27,
                          top:  90,
                          child: Container(
                            width: 113,
                            height: 113,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 113,
                                    height: 113,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFF7FAFF),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 1.90,
                                          color: Colors.black.withOpacity(0.6700000166893005),
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8.48,
                                  top: 8.47,
                                  child: Container(
                                    width: 95.11,
                                    height: 95.11,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage("https://via.placeholder.com/95x95"),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  CustomPaint(
                    painter: DashedBorderPainter(esquerdo: false),
                    size: Size(widgetcontene[0] + 11, widgetcontene[1] + 11),

                  ),

                ]),



          ],
        ),
      ),
    );
  }
}

*/


import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:grtretretretert/pages/component/Customcard.dart';





void main() {
  runApp(MyApp());
}

const String baseUrl = 'http://191.252.109.142:8080';

class Machine {

  final String name;
  final String imageUrl;
  final String description;
  final List<String> urlImagens;
  final List<String> nomesFiltro;
  final List<double> horasRest;
  final List<String> nomesSol;
  final List<String> nomesReq;
  final List<String> referencias;
  final List<String> observacoes;
  final List<String> datasUltimas;

  Machine({

    required this.name,
    required this.imageUrl,
    required this.description,
    required this.urlImagens,
    required this.nomesFiltro,
    required this.horasRest,
    required this.nomesSol,
    required this.nomesReq,
    required this.referencias,
    required this.observacoes,
    required this.datasUltimas,


  });

  factory Machine.fromJson(Map<String, dynamic> json) {
   return Machine(

      name: json['nome'],
      imageUrl: json['imageUrl'] != null ? baseUrl + json['imageUrl'] : '',
      description: json['description']?? '',
      urlImagens: [
        json['urlimagem']  != null ? baseUrl + json['urlimagem'] : '',
        json['urlimagem1']  != null ? baseUrl + json['urlimagem1'] : '',
        json['urlimagem2']  != null ? baseUrl + json['urlimagem2'] : '',
        json['urlimagem3']  != null ? baseUrl + json['urlimagem3'] : '',
        json['urlimagem4']  != null ? baseUrl + json['urlimagem4'] : '',

      ],
      nomesFiltro: [
        json['nomefiltro'] ?? '',
        json['nomefiltro1'] ?? '',
        json['nomefiltro2'] ?? '',
        json['nomefiltro3'] ?? '',
        json['nomefiltro4'] ?? '',
      ],
      horasRest: [
        json['horasrest'] ?? 0,
        json['horasrest1'] ?? 0,
        json['horasrest2'] ?? 0,
        json['horasrest3'] ?? 0,
        json['horasrest4'] ?? 0,
      ],
      nomesSol: [
        json['nomesol'] ?? '',
        json['nomesol1'] ?? '',
        json['nomesol2'] ?? '',
        json['nomesol3'] ?? '',
        json['nomesol4'] ?? '',
      ],
      nomesReq: [
        json['nomereq'] ?? '',
        json['nomereq1'] ?? '',
        json['nomereq2'] ?? '',
        json['nomereq3'] ?? '',
        json['nomereq4'] ?? '',
      ],
      referencias: [
        json['referencia'] ?? '',
        json['referencia1'] ?? '',
        json['referencia2'] ?? '',
        json['referencia3'] ?? '',
        json['referencia4'] ?? '',
      ],
      observacoes: [
        json['obs'] ?? '',
        json['obs1'] ?? '',
        json['obs2'] ?? '',
        json['obs3'] ?? '',
        json['obs4'] ?? '',
      ],
      datasUltimas: [
        json['dataultima'] ?? '',
        json['dataultima1'] ?? '',
        json['dataultima2'] ?? '',
        json['dataultima3'] ?? '',
        json['dataultima4'] ?? '',
      ],
    );
  }
}

class MachineDetailsScreen extends StatefulWidget {
  final String machineId;

  MachineDetailsScreen({required this.machineId});

  @override
  _MachineDetailsScreenState createState() => _MachineDetailsScreenState();
}

class _MachineDetailsScreenState extends State<MachineDetailsScreen> {
  late Future<Machine?> _machineDetails;

  get http => null;

  @override
  void initState() {
    super.initState();

    _machineDetails = fetchMachineDetails(widget.machineId);
  }

  Future<Machine?> fetchMachineDetails(String machineId) async {
    final response = await   http.get(Uri.parse('$baseUrl/maquina/$machineId'));
    print(jsonDecode(response.body));
    if (response.statusCode == 200) {

      return Machine.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load machine details');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Machine?>(
      future: _machineDetails,
      builder: (context, snapshot) {


        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            appBar: AppBar(title: Text('Carregando...')),
            body: Center(child: CircularProgressIndicator()),
          );
        } else if (snapshot.hasError) {

          return Scaffold(
            appBar: AppBar(title: Text('Erro')),
            body: Center(child: Text('Erro ao carregar os dados')),

          );
        } else if (!snapshot.hasData || snapshot.data == null) {
          return Scaffold(
            appBar: AppBar(title: Text('Equipamento não encontrado')),
            body: Center(child: Text('Desculpe, o equipamento não foi encontrado.')),
          );
        } else {
          Machine machineData = snapshot.data!;


          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 14, 10, 10), // Ajuste o valor conforme necessário
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(machineData.imageUrl),
                      // Aqui você pode definir o tamanho desejado para a imagem
                      radius: 23,
                    ),
                    SizedBox(width: 20), // Espaço entre a imagem e o título
                    Text(machineData.name),
                  ],
                ),
              ),
            ),









              body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    double screenWidth = constraints.maxWidth;
                    int crossAxisCount = screenWidth > 770 ? 2 : 1;
                    double tamanho =
                    screenWidth > 1491 ? 1.9 :
                    screenWidth > 1378 ? screenWidth / 10 * 0.014 :
                    screenWidth > 1007 ? screenWidth / 10 * 0.015 :
                    screenWidth > 972 ? screenWidth / 10 * 0.0148 :
                    screenWidth > 900 ? screenWidth / 10 * 0.0155 :
                    screenWidth > 800 ? screenWidth / 10 * 0.0165 :
                    screenWidth > 790 ? screenWidth / 10 * 0.0158 :
                    screenWidth > 770 ? screenWidth / 10 * 0.018 :
                    screenWidth > 672 ? screenWidth / 10 * 0.027 :
                    screenWidth > 600.5 ? screenWidth / 10 * 0.031 :
                    screenWidth > 597.5 ? screenWidth / 10 * 0.0298 :
                    screenWidth > 500 ? screenWidth / 10 * 0.0305 :
                    screenWidth > 460 ? screenWidth / 10 * 0.030 :
                    screenWidth > 400 ? screenWidth / 10 * 0.033 :
                    screenWidth > 357 ? screenWidth / 10 * 0.035 :
                    screenWidth > 300 ? screenWidth / 10 * 0.040 :
                    screenWidth > 280 ? screenWidth / 10 * 0.047 :
                    screenWidth > 260 ? screenWidth / 10 * 0.050 :
                    screenWidth > 244 ? screenWidth / 10 * 0.054 :
                    screenWidth > 100 ? screenWidth / 10 * 0.058 :
                    screenWidth / 10 * 0.031;
                    return GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),

                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 8.0,
                        // Altere esse valor conforme necessário
                        childAspectRatio: tamanho,
                        // Altere esse valor conforme necessário
                        crossAxisCount: crossAxisCount,
                        // Defina um valor para o espaçamento horizontal
                      ),
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        double cardWidth = MediaQuery
                            .of(context)
                            .size
                            .width / crossAxisCount;

                        // Escala da fonte baseada no tamanho do card
                        double fontSize = cardWidth * 0.05;

                        // Conteúdo do itemBuilder com base no índice
                        // Use o index para acessar os dados dos cards
                        return Customcard(
                          fontsize: fontSize,
                          urlimagem: machineData.urlImagens[index],
                          nomefiltro: machineData.nomesFiltro[index],
                          horasrest: machineData.horasRest[index],
                          nomesol: machineData.nomesSol[index],
                          nomereq: machineData.nomesReq[index],
                          referencia: machineData.referencias[index],
                          obs: machineData.observacoes[index],
                          dataultima: machineData.datasUltimas[index],
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          );
        }
      },
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Machine Details',
      theme: ThemeData(primarySwatch: Colors.blue),
      onGenerateRoute: (settings) {
        if (settings.name!.startsWith('/machineDetails/')) {
          final machineId = settings.name!.split('/').last;
          return MaterialPageRoute(
            builder: (context) => MachineDetailsScreen(machineId: machineId),
          );
        }

        return MaterialPageRoute(builder: (context) => HomeScreen());

      },
      initialRoute: '/',
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(


          child: Text('Ver Detalhes da Máquina'),

      ),
    );
  }
}








