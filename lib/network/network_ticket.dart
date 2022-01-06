import 'dart:convert';


import 'package:ejm/model/ticket.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

List<Ticket> parseTicket(String responseBody) {
  var list = json.decode(responseBody) as List<dynamic>;
  List<Ticket> tickets = list.map((model) => Ticket.fromJson(model)).toList();
  return tickets;
}

Future<List<Ticket>> fetchTicket(String username) async {
  final response = await http.get(Uri.parse('http://10.0.2.2/api/hasgone/notrated.php?username=' + username));
  if (response.statusCode == 200) {
    return compute(parseTicket, response.body);
  } else {
    throw Exception("Request API Error");
  }
}