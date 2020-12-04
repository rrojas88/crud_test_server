import 'package:boilerplate/clean_architecture/tickets/data/datasource/tickets_datasource.dart';
import 'package:boilerplate/clean_architecture/tickets/data/models/tickets_enabled_model.dart';
import 'package:boilerplate/clean_architecture/tickets/data/models/tickets_redeemed_model.dart';
import 'package:boilerplate/clean_architecture/tickets/domain/entities/ticket.dart';

class MockDataSource implements TicketDatasource {
  MockDataSource();

  @override
  // ignore: missing_return
  Future<List<TicketEnabledModel>> getTicketsEnabled() async {
    final list = [
      Ticket(
          code: 1110,
          id: 1,
          imagenUrl: '',
          terms: 'los trminos son estos',
          titulo: 'Negocio prueba'),
    ];
    Future.delayed(const Duration(milliseconds: 500), () {
      return list;
    });
  }

  @override
  Future<List<TicketRedeemedModel>> getTicketsRedeemed() async {
    return [];
  }

  @override
  Future<bool> setRedeemTicket(int id) async {
    return true;
  }
}
