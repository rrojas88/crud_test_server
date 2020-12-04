import 'package:boilerplate/clean_architecture/tickets/domain/entities/ticket.dart';
import 'package:boilerplate/clean_architecture/tickets/presenter/custom_painter/custom_painter.dart';
import 'package:boilerplate/ui/screens/common/my_alert_dialog.dart';
import 'package:boilerplate/utils/device/size_utils_device.dart';
import 'package:flutter/material.dart';

class CardRedeemTicket extends StatelessWidget {
  const CardRedeemTicket({Key key, @required this.ticket}) : super(key: key);

  final Ticket ticket;

  @override
  Widget build(BuildContext context) {
    final time =
        '${ticket.expiredDate?.day}/${ticket.expiredDate?.month}/${ticket.expiredDate?.year.toString().substring(0, 2)}';
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.heightMultiplier * 5,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomPaint(
                size: Size(
                  SizeConfig.widthMultiplier * 85,
                  SizeConfig.heightMultiplier * 25,
                ),
                painter: RPSCustomPainter(),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: SizeConfig.widthMultiplier * 12,
                  right: SizeConfig.widthMultiplier * 4,
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FittedBox(
                              child: Text(
                                ticket.titulo,
                                maxLines: 2,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5
                                    .apply(color: Colors.black),
                              ),
                            ),
                            FittedBox(
                              child: Text(
                                'Codigo',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5
                                    .apply(color: Colors.black54),
                              ),
                            ),
                            FittedBox(
                              child: Text(
                                ticket.code.toString(),
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5
                                    .apply(color: Colors.black54),
                              ),
                            ),
                            FittedBox(
                              child: Text(
                                'Valido hasta',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    .apply(color: Colors.black),
                              ),
                            ),
                            FittedBox(
                              child: Text(
                                'el $time',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    .apply(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          margin:
                              EdgeInsets.all(SizeConfig.heightMultiplier * 2),
                          child: FadeInImage(
                            fit: BoxFit.cover,
                            width: SizeConfig.heightMultiplier * 20,
                            height: SizeConfig.heightMultiplier * 20,
                            placeholder:
                                AssetImage('assets/images/noimage.jpg'),
                            image: NetworkImage(ticket.imagenUrl),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(
              left: SizeConfig.heightMultiplier * 5,
              bottom: SizeConfig.heightMultiplier * 2,
            ),
            child: SizedBox(
              height: 20,
              width: SizeConfig.screenWidthDynamic,
              child: FlatButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  PlatformAlertDialog(
                    title: 'términos y condiciones',
                    content: ticket.terms,
                    defaultActionText: 'Salir',
                  ).show(context);
                },
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    ' términos y condiciones',
                    style: Theme.of(context).textTheme.caption,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
