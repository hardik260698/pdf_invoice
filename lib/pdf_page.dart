import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:sizer/sizer.dart';


import 'package:pdf_invoice/pdf_helper.dart';

class DispatchInvoicePdfHelper {

  Future<File> generateDispatchTax() async {
    final pdf = pw.Document();

    List<pw.Widget> widgets = [];

    final logoArea = pw.Row(
      children: [
        pw.Expanded(
          child: pw.Container(
            height: 230,
            decoration: pw.BoxDecoration(
              borderRadius: pw.BorderRadius.circular(0),
              border: pw.Border.all(
                color: PdfColors.black,
                width: 0.5,
              ),
            ),
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: <pw.Widget>[
                pw.Padding(padding: const pw.EdgeInsets.all(3),
                  child: pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Text(
                        "Company name",
                        style: pw.TextStyle(
                          fontSize: 12,
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                      pw.Text(
                        "Company address",
                        style: const pw.TextStyle(
                          fontSize: 11,
                        ),
                      ),
                      pw.Text(
                        'GSTIN/UIN: 24GSTNUMBER',
                        style: const pw.TextStyle(
                          fontSize: 11,
                        ),
                      ),
                      pw.Text(
                        'State Name : Gujarat, Code : 24',
                        style: const pw.TextStyle(
                          fontSize: 11,
                        ),
                      ),
                      pw.Text(
                        'E-Mail : mailto:shivang@gmail.com',
                        style: const pw.TextStyle(
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),),

                pw.Divider(thickness: 0.5, endIndent: 0, indent: 0,),
                pw.Padding(padding: const pw.EdgeInsets.all(3),
                  child: pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Text(
                        'Buyer (Bill to)',
                        style: const pw.TextStyle(
                          fontSize: 11,
                        ),
                      ),
                      pw.Text(
                        "Hardik Patel",
                        style: pw.TextStyle(
                          fontSize: 12,
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                      pw.Text(
                        "Ahmedabad",
                        style: const pw.TextStyle(
                          fontSize: 11,
                        ),
                      ),
                      pw.Text(
                        'State Name : Gujarat, Code : 24',
                        style: const pw.TextStyle(
                          fontSize: 11,
                        ),
                      ),

                      pw.SizedBox(
                        height: 7,
                      ),

                      pw.Text(
                        'Deliver to :-',
                        style: pw.TextStyle(
                          fontSize: 11,
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                      pw.Text(
                        "Science City, Ahmedabad",
                        style: const pw.TextStyle(
                          fontSize: 11,
                        ),
                      ),
                      pw.Text(
                        'State Name : Gujarat, Code : 24',
                        style: const pw.TextStyle(
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
        pw.Expanded(
          child: pw.Container(
            height: 230,
            decoration: pw.BoxDecoration(
              borderRadius: pw.BorderRadius.circular(0),
              border: pw.Border.all(
                color: PdfColors.black,
                width: 0.5,
              ),
            ),
            child: pw.Column(
              children: [
                pw.Padding(
                  padding: const pw.EdgeInsets.only(
                    left: 3,
                    top: 1,
                    right: 3,
                    bottom: 1,
                  ),
                  child: pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                    children: [
                      pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Text(
                            "Invoice No.",
                            style: const pw.TextStyle(
                              fontSize: 11,
                            ),
                          ),
                          pw.Text(
                            "TI-779/23-24",
                            style: pw.TextStyle(
                              fontSize: 11,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Text(
                            "Dated",
                            style: const pw.TextStyle(
                              fontSize: 11,
                            ),
                          ),
                          pw.Text(
                            "13-Dec-24",
                            style: pw.TextStyle(
                              fontSize: 11,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                pw.Divider(
                  thickness: 0.5,
                  endIndent: 0,
                  indent: 0,
                ),
                pw.Padding(
                  padding: const pw.EdgeInsets.only(
                    left: 3,
                    top: 1,
                    right: 3,
                    bottom: 1,
                  ),
                  child: pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                    children: [
                      pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Text(
                            "Delivery Note",
                            style: const pw.TextStyle(
                              fontSize: 11,
                            ),
                          ),
                          pw.Text(
                            "DONE",
                            style: pw.TextStyle(
                              fontSize: 11,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Text(
                            "Mode/Terms of Payment",
                            style: const pw.TextStyle(
                              fontSize: 11,
                            ),
                          ),
                          pw.Text(
                            "CASH",
                            style: pw.TextStyle(
                              fontSize: 11,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                pw.Divider(
                  thickness: 0.5,
                  endIndent: 0,
                  indent: 0,
                ),
                pw.Padding(
                  padding: const pw.EdgeInsets.only(
                    left: 3,
                    top: 1,
                    right: 3,
                    bottom: 1,
                  ),
                  child: pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                    children: [
                      pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Text(
                            "Dispatch Doc No.",
                            style: const pw.TextStyle(
                              fontSize: 11,
                            ),
                          ),
                          pw.Text(
                            "00001",
                            style: pw.TextStyle(
                              fontSize: 11,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Text(
                            "Delivery Note Date",
                            style: const pw.TextStyle(
                              fontSize: 11,
                            ),
                          ),
                          pw.Text("13-Feb-24",
                            style: pw.TextStyle(
                              fontSize: 11,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                pw.Divider(
                  thickness: 0.5,
                  endIndent: 0,
                  indent: 0,
                ),
                pw.Padding(
                  padding: const pw.EdgeInsets.only(
                    left: 3,
                    top: 1,
                    right: 3,
                    bottom: 1,
                  ),
                  child: pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                    children: [
                      pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Text(
                            "Transporter Name",
                            style: const pw.TextStyle(
                              fontSize: 11,
                            ),
                          ),
                          pw.Text(
                            "Pankaj",
                            style: pw.TextStyle(
                              fontSize: 11,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Text(
                            "Destination",
                            style: const pw.TextStyle(
                              fontSize: 11,
                            ),
                          ),
                          pw.Text(
                            "Makarba",
                            style: pw.TextStyle(
                              fontSize: 11,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                pw.Divider(thickness: 0.5, endIndent: 0, indent: 0,),
                pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                   pw.Padding(
                     padding: pw.EdgeInsets.only(left: 5),
                     child:  pw.Text(
                       "Scan & Pay through (Google Pay , Phone Pay and Paytm)",
                       style: const pw.TextStyle(
                         fontSize: 10,
                       ),
                     ),
                   ),
                    pw.SizedBox(
                      height: 2,
                    ),

                    //  --------SHOW SCANNER HERE--------
                    // pw.Container(
                    //   height: 50,
                    //   width: 50,
                    //   child: pw.SvgImage(
                    //     svg: await _loadBarcode(dispatchData: dispatchData),
                    //     height: 30,
                    //     width: 30,
                    //   ),
                    // ),
                  ],
                ),

              ],
            ),
          ),
        ),
      ],
    );

    final middleArea = pw.Row(
      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
      children: [
        pw.Text(
          "Amount Chargeable (in words)",
          style: const pw.TextStyle(
            fontSize: 11,
          ),
        ),
        pw.Text(
          "E. & O.E",
          style: const pw.TextStyle(
            fontSize: 11,
          ),
        ),
      ],
    );

    final bottomArea = pw.Container(
        padding:const pw.EdgeInsets.only(left: 5),
      decoration: pw.BoxDecoration(
        border: pw.Border.all(color: PdfColors.black,width: 1)
      ),
      child: pw.Column(
        children: [
          pw.Row(
            children: [
              pw.Text(
                "Tax Amount (in words) : ",
                style: const pw.TextStyle(
                  fontSize: 11,
                ),
              ),
              pw.Text(
                "INR Five thousand rupees Only",
                style: pw.TextStyle(
                  fontSize: 12,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
            ],
          ),
          pw.SizedBox(height: 5),
          pw.Row(
            mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
            children: [
              pw.Expanded(
                child: pw.Container(
                  child: pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    mainAxisAlignment: pw.MainAxisAlignment.start,
                    children: [
                      pw.Text(
                        "Declaration",
                        style: const pw.TextStyle(
                          fontSize: 11,
                          decoration: pw.TextDecoration.underline,
                        ),
                      ),
                      pw.Text(
                        "We declare that this invoice shows the actual price of the goods described and that all particulars are true and correct",
                        style: const pw.TextStyle(
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              pw.Expanded(
                child:     pw.Container(
                  height: 70,
                  padding: const pw.EdgeInsets.all(3),
                  decoration: pw.BoxDecoration(
                    borderRadius: pw.BorderRadius.circular(0),
                    border: pw.Border.all(
                      color: PdfColors.black,
                      width: 0.5,
                    ),
                  ),
                  child: pw.Column(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: pw.CrossAxisAlignment.center,
                    children: [
                      pw.Text(
                        "for shis",
                        textAlign: pw.TextAlign.center,
                        style: pw.TextStyle(
                          fontSize: 12,
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                      pw.Text(
                        "Authorised Signatory",
                        style: const pw.TextStyle(
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ],
      )
    );

    widgets.add(logoArea);
    widgets.add(pw.SizedBox(height: 10),);
    widgets.add(firstTable());
    widgets.add(pw.SizedBox(height: 5),);
    widgets.add(middleArea);
    widgets.add(pw.SizedBox(height: 5),);
    widgets.add(pw.Text(
      "INR Two hundred ten rupees Only",
      style: pw.TextStyle(
        fontSize: 12,
        fontWeight: pw.FontWeight.bold,
      ),
    ),);
    widgets.add(pw.SizedBox(height: 5),);
    widgets.add(secondTable());
    // widgets.add(pw.SizedBox(height: 5),);
    widgets.add(bottomArea);
    pdf.addPage(
      pw.MultiPage(
        orientation: pw.PageOrientation.portrait,
        pageFormat: PdfPageFormat.a4,
        maxPages: 500,
        margin: const pw.EdgeInsets.all(60),
        build: (pw.Context context) {
          return widgets;
        },
        footer: (context) {
          return pw.Center(
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.center,
              children: [
                pw.Text(
                  "SUBJECT TO AHMEDABAD JURISDICTION",
                  style: const pw.TextStyle(
                    fontSize: 12,
                  ),
                ),
                pw.Text(
                  "This is a Computer Generated Invoice",
                  style: const pw.TextStyle(
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          );
        },
      ),

    );

    return PdfHelper.saveDocument(name: 'Dispatch_tax_invoice_0001.pdf', pdf: pdf);
  }

  pw.Table firstTable() {
    List<pw.TableRow> rows = [];

    for (var i = 0; i < 5; i++) {
      rows.add(
        pw.TableRow(
          children: <pw.Widget>[
            pw.Text(
              "${i + 1}",
              textAlign: pw.TextAlign.center,
              style: const pw.TextStyle(
                fontSize: 8,
              ),
            ),
            pw.Padding(
              padding: const pw.EdgeInsets.all(2),
              child: pw.Column(
                mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Text(
                    "productName",
                    textAlign: pw.TextAlign.left,
                    style: pw.TextStyle(
                      fontWeight: pw.FontWeight.bold,
                      fontSize: 8,
                    ),
                  ),
                  pw.Text(
                    "qty",
                    style: const pw.TextStyle(
                      fontSize: 7,
                    ),
                  ),
                ],
              ),
            ),
            pw.Padding(
              padding: const pw.EdgeInsets.all(2),
              child: pw.Text(
                "hsnCode",
                style: const pw.TextStyle(
                  fontSize: 8,
                ),
              ),
            ),
            pw.Padding(
              padding: const pw.EdgeInsets.all(2),
              child: pw.Text(
                "actualQty",
                style: const pw.TextStyle(
                  fontSize: 8,
                ),
              ),
            ),
            pw.Padding(
              padding: const pw.EdgeInsets.all(2),
              child: pw.Text(
                "qty",
                style: pw.TextStyle(
                  fontSize: 8,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
            ),
            pw.Padding(
              padding: const pw.EdgeInsets.all(2),
              child: pw.Text(
                "price",
                style: const pw.TextStyle(
                  fontSize: 8,
                ),
              ),
            ),
            pw.Padding(
              padding: const pw.EdgeInsets.all(2),
              child: pw.Text(
                "50 %",
                style: const pw.TextStyle(
                  fontSize: 8,
                ),
              ),
            ),
            pw.Padding(
              padding: const pw.EdgeInsets.all(2),
              child: pw.Text(
                "newTotalMrp",
                style: pw.TextStyle(
                  fontSize: 8,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      );
    }
    return pw.Table(
      border: pw.TableBorder.all(
        color: PdfColors.black,
        style: pw.BorderStyle.solid,
        width: 1.0,
      ),
      columnWidths: {
        0: const pw.FlexColumnWidth(0.5),
        1: const pw.FlexColumnWidth(1.8),
        2: const pw.FlexColumnWidth(0.6),
        3: const pw.FlexColumnWidth(0.7),
        4: const pw.FlexColumnWidth(0.8),
        5: const pw.FlexColumnWidth(0.7),
        6: const pw.FlexColumnWidth(0.5),
        7: const pw.FlexColumnWidth(0.7),
      },
      defaultVerticalAlignment: pw.TableCellVerticalAlignment.middle,
      children: <pw.TableRow>[
        pw.TableRow(
          repeat: true,
          decoration: const pw.BoxDecoration(color: PdfColors.grey300),
          children: <pw.Widget>[
            pw.Text(
              'Sr. No',
              textAlign: pw.TextAlign.center,
              style: const pw.TextStyle(
                fontSize: 9,
              ),
            ),
            pw.Padding(
              padding: const pw.EdgeInsets.only(left: 2),
              child: pw.Text(
                'Description of Goods',
                textAlign: pw.TextAlign.left,
                style: const pw.TextStyle(
                  fontSize: 9,
                ),
              ),
            ),
            pw.Text(
              'HSN/SAC',
              textAlign: pw.TextAlign.center,
              style: const pw.TextStyle(
                fontSize: 9,
              ),
            ),
            pw.Text(
              'Quantity Shipped',
              textAlign: pw.TextAlign.center,
              style: const pw.TextStyle(
                fontSize: 9,
              ),
            ),
            pw.Text(//4
              'Quantity Billed',
              textAlign: pw.TextAlign.center,
              style: const pw.TextStyle(
                fontSize: 9,
              ),
            ),
            pw.Text(
              'Rate',
              textAlign: pw.TextAlign.center,
              style: const pw.TextStyle(
                fontSize: 9,
              ),
            ),
            // pw.Text(
            //   'per',
            //   textAlign: pw.TextAlign.center,
            //   style: const pw.TextStyle(
            //     fontSize: 9,
            //   ),
            // ),
            pw.Text(
              'Disc. % / Rs.',
              textAlign: pw.TextAlign.center,
              style: const pw.TextStyle(
                fontSize: 9,
              ),
            ),
            pw.Text(
              'Amount',
              textAlign: pw.TextAlign.center,
              style: const pw.TextStyle(
                fontSize: 9,
              ),
            ),
          ],
        ), ...rows,
        pw.TableRow(
          children: <pw.Widget>[
            pw.Text(
              '',
            ),
            pw.Padding(
              padding: const pw.EdgeInsets.only(
                left: 2,
                right: 2,
                bottom: 3,
                top: 3,
              ),
              child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.end,
                mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                children: [
                  pw.Text(
                    'SGST OUTPUT',
                    style: pw.TextStyle(
                      fontWeight: pw.FontWeight.bold,
                      fontSize: 8,
                    ),
                  ),
                  pw.Text(
                    'CGST OUTPUT',
                    style: pw.TextStyle(
                      fontWeight: pw.FontWeight.bold,
                      fontSize: 8,
                    ),
                  ),
                  pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                    children: [
                      pw.Text(
                        'Less:',
                        textAlign: pw.TextAlign.left,
                        style: const pw.TextStyle(
                          fontSize: 7,
                        ),
                      ),
                      pw.Text(
                        'ROUND OFF',
                        style: pw.TextStyle(
                          fontWeight: pw.FontWeight.bold,
                          fontSize: 8,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            pw.Text(
              '',
            ),
            pw.Text(
              '',
            ),
            pw.Text(
              '',
            ),
            pw.Text(
              '',
            ),
            pw.Text(
              '',
            ),
            pw.Padding(
              padding: const pw.EdgeInsets.only(
                right: 2,
                bottom: 4,
                top: 3,
              ),
              child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.end,
                children: [
                  pw.Text(
                    "5000",
                    style: pw.TextStyle(
                      fontWeight: pw.FontWeight.bold,
                      fontSize: 8,
                    ),
                  ),
                  pw.Text(
                    "5",
                    style: pw.TextStyle(
                      fontWeight: pw.FontWeight.bold,
                      fontSize: 8,
                    ),
                  ),
                  pw.Text(
                    "5",
                    style: pw.TextStyle(
                      fontWeight: pw.FontWeight.bold,
                      fontSize: 8,
                    ),
                  ),
                  pw.Text(
                    '(-)0.0',
                    style: pw.TextStyle(
                      fontWeight: pw.FontWeight.bold,
                      fontSize: 8,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        pw.TableRow(
          children: <pw.Widget>[
            pw.Text(
              '',
            ),
            pw.Padding(
              padding: const pw.EdgeInsets.only(
                right: 2,
                bottom: 3,
                top: 3,
              ),
              child: pw.Text(
                'Total',
                textAlign: pw.TextAlign.right,
                style: const pw.TextStyle(
                  fontSize: 9,
                ),
              ),
            ),
            pw.Text(
              '',
            ),
            pw.Text(
              '',
            ),
            pw.Text(
              '',
            ),
            pw.Text(
              '',
            ),
            pw.Text(
              '',
            ),
            pw.Padding(
              padding: const pw.EdgeInsets.only(
                right: 2,
                bottom: 3,
                top: 3,
              ),
              child: pw.Text(
                "510",
                textAlign: pw.TextAlign.right,
                style: pw.TextStyle(
                  fontWeight: pw.FontWeight.bold,
                  fontSize: 8,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  pw.Table secondTable() {
    List<pw.TableRow> rows = [];

    for (var i = 0; i < 2; i++) {
      rows.add(
        pw.TableRow(
          children: <pw.Widget>[
            pw.Padding(
              padding: const pw.EdgeInsets.all(2),
              child: pw.Column(
                mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Text(
                    "hsnCode",
                    style: const pw.TextStyle(
                      fontSize: 7,
                    ),
                  ),
                ],
              ),
            ),
            pw.Padding(
              padding: const pw.EdgeInsets.all(2),
              child: pw.Text(
                "taxableValue",
                style: const pw.TextStyle(
                  fontSize: 8,
                ),
              ),
            ),
            pw.Padding(
              padding: const pw.EdgeInsets.all(2),
              child: pw.Text(
                '2.5 %',
                style: const pw.TextStyle(
                  fontSize: 8,
                ),
              ),
            ),
            pw.Padding(
              padding: const pw.EdgeInsets.all(2),
              child: pw.Text(
                "5",
                style: const pw.TextStyle(
                  fontSize: 8,
                ),
              ),
            ),
            pw.Padding(
              padding: const pw.EdgeInsets.all(2),
              child: pw.Text(
                '1 %',
                style: const pw.TextStyle(
                  fontSize: 8,
                ),
              ),
            ),
            pw.Padding(
              padding: const pw.EdgeInsets.all(2),
              child: pw.Text(
                "5",
                style: const pw.TextStyle(
                  fontSize: 8,
                ),
              ),
            ),
            pw.Padding(
              padding: const pw.EdgeInsets.all(2),
              child: pw.Text(
                "5",
                style: const pw.TextStyle(
                  fontSize: 8,
                ),
              ),
            ),
          ],
        ),
      );
    }
    return pw.Table(
      border: pw.TableBorder.all(
        color: PdfColors.black,
        style: pw.BorderStyle.solid,
        width: 1.0,
      ),
      columnWidths: {
        0: const pw.FlexColumnWidth(2),
        1: const pw.FlexColumnWidth(0.6),
        2: const pw.FlexColumnWidth(0.6),
        3: const pw.FlexColumnWidth(0.7),
        4: const pw.FlexColumnWidth(0.6),
        5: const pw.FlexColumnWidth(0.7),
        6: const pw.FlexColumnWidth(0.9),
      },
      defaultVerticalAlignment: pw.TableCellVerticalAlignment.middle,
      children: [
        pw.TableRow(
          repeat: true,
          decoration: const pw.BoxDecoration(color: PdfColors.grey300),
          children: <pw.Widget>[
            pw.Text(
              'HSN/SAC',
              textAlign: pw.TextAlign.center,
              style: const pw.TextStyle(
                fontSize: 9,
              ),
            ),
            pw.Text(
              'Taxable Value',
              textAlign: pw.TextAlign.center,
              style: const pw.TextStyle(
                fontSize: 9,
              ),
            ),
            pw.Text(
              'CGST Rate',
              textAlign: pw.TextAlign.center,
              style: const pw.TextStyle(
                fontSize: 9,
              ),
            ),
            pw.Text(
              'CGST Amount',
              textAlign: pw.TextAlign.center,
              style: const pw.TextStyle(
                fontSize: 9,
              ),
            ),
            pw.Text(
              'SGST Rate',
              textAlign: pw.TextAlign.center,
              style: const pw.TextStyle(
                fontSize: 9,
              ),
            ),
            pw.Text(
              'SGST Amount',
              textAlign: pw.TextAlign.center,
              style: const pw.TextStyle(
                fontSize: 9,
              ),
            ),
            pw.Text(
              'Total Tax Amount',
              textAlign: pw.TextAlign.center,
              style: const pw.TextStyle(
                fontSize: 9,
              ),
            ),
          ],
        ), ...rows,

        pw.TableRow(
          // repeat: true,
          children: <pw.Widget>[
            pw.Padding(
              padding: const pw.EdgeInsets.only(
                right: 2,
                bottom: 3,
                top: 3,
              ),
              child: pw.Text(
                'Total',
                textAlign: pw.TextAlign.right,
                style: const pw.TextStyle(
                  fontSize: 9,
                ),
              ),
            ),
            pw.Padding(
              padding: const pw.EdgeInsets.only(
                right: 2,
                bottom: 3,
                top: 3,
              ),
              child: pw.Text(
                "newMrpTotal",
                textAlign: pw.TextAlign.right,
                style: pw.TextStyle(
                  fontWeight: pw.FontWeight.bold,
                  fontSize: 8,
                ),
              ),
            ),
            pw.Text(
              '',
            ),
            pw.Padding(
              padding: const pw.EdgeInsets.only(
                right: 2,
                bottom: 3,
                top: 3,
              ),
              child: pw.Text(
                "totalCGSTAmount",
                textAlign: pw.TextAlign.right,
                style: pw.TextStyle(
                  fontWeight: pw.FontWeight.bold,
                  fontSize: 8,
                ),
              ),
            ),
            pw.Text(
              '',
            ),
            pw.Padding(
              padding: const pw.EdgeInsets.only(
                right: 2,
                bottom: 3,
                top: 3,
              ),
              child: pw.Text(
                "totalSGSTAmount",
                textAlign: pw.TextAlign.right,
                style: pw.TextStyle(
                  fontWeight: pw.FontWeight.bold,
                  fontSize: 8,
                ),
              ),
            ),
            pw.Padding(
              padding: const pw.EdgeInsets.only(
                right: 2,
                bottom: 3,
                top: 3,
              ),
              child: pw.Text(
                "totalTaxCGSTSGSTDigit",
                textAlign: pw.TextAlign.right,
                style: pw.TextStyle(
                  fontWeight: pw.FontWeight.bold,
                  fontSize: 8,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}