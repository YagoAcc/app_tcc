import 'package:app_tcc/utils/constants.dart';
import 'package:flutter/material.dart';

class ContainerIcon extends StatefulWidget {
  const ContainerIcon({
    Key? key,
    required this.initialIcon,
    required this.secondIcon,
  }) : super(key: key);

  final IconData initialIcon;
  final IconData secondIcon;

  @override
  _ContainerIconState createState() => _ContainerIconState();
}

class _ContainerIconState extends State<ContainerIcon> {
  late IconData currentIcon;

  @override
  void initState() {
    super.initState();
    currentIcon = widget.initialIcon;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: yellowColor,
        borderRadius: const BorderRadius.all(Radius.circular(50)),
      ),
      child: IconButton(
        icon: Icon(currentIcon),
        onPressed: () {
          setState(() {
            // Trocar o ícone ao clicar
            currentIcon = (currentIcon == widget.initialIcon)
                ? widget.secondIcon // Novo ícone quando o estado é verdadeiro
                : widget.initialIcon; // Ícone inicial quando o estado é falso
          });
        },
      ),
    );
  }
}
