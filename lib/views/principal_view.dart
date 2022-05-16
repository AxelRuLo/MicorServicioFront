import 'package:flutter/material.dart';

class PrincipalView extends StatelessWidget {
  const PrincipalView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: ColumGeneral(),
      ),
    );
  }
}

class ColumGeneral extends StatelessWidget {
  const ColumGeneral({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var numeros = ContainerNumeros();

    return Column(
      children: [
        // const ContainerNumeros(),
        numeros,
        SizedBox(
          height: size.height * 0.05,
        ),
        ElevatedButton(onPressed: () => {}, child: const Text("Suma")),
        SizedBox(height: size.height * .05),
        ElevatedButton(onPressed: () => {}, child: const Text("Resta")),
        SizedBox(height: size.height * .05),
        ElevatedButton(
            onPressed: () => {}, child: const Text("Multiplicacion")),
        SizedBox(height: size.height * .05),
        const ContainerPokemon(),
        ElevatedButton(
            onPressed: () => {}, child: const Text("Consulta pokemon")),
        SizedBox(height: size.height * .05),
        const Text(
          "Resultado",
          style: TextStyle(
            color: Colors.black,
            decoration: TextDecoration.none,
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: size.height * 0.05,
          width: size.width * 0.2,
          child: const TextField(
            enabled: false, 
            keyboardType: TextInputType.number,
            obscureText: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: '',
            ),
          ),
        ),
      ],
    );
  }
}

class ContainerPokemon extends StatelessWidget {
  const ContainerPokemon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          "Introduce el nombre del pokemon a buscar",
          style: TextStyle(
            color: Colors.black,
            decoration: TextDecoration.none,
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: size.height * .05,
        ),
        SizedBox(
          height: size.height * 0.05,
          width: size.width * 0.5,
          child: const TextField(
            obscureText: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Nombre del pokemon',
            ),
          ),
        ),
        SizedBox(
          height: size.height * .05,
        ),
      ],
    );
  }
}

class ContainerNumeros extends StatelessWidget {
  const ContainerNumeros({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: size.height * 0.1),
            const Text(
              "Introduce el primer digito",
              style: TextStyle(
                color: Colors.black,
                decoration: TextDecoration.none,
                fontSize: 20,
              ),
            ),
            SizedBox(
              width: size.width * 0.02,
            ),
            SizedBox(
              height: size.height * 0.05,
              width: size.width * 0.2,
              child: const TextField(
                obscureText: false,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Numero 1',
                ),
              ),
            ),
            SizedBox(
              width: size.width * 0.02,
            ),
            const Text(
              "Introduce el segundo digito",
              style: TextStyle(
                color: Colors.black,
                decoration: TextDecoration.none,
                fontSize: 20,
              ),
            ),
            SizedBox(
              width: size.width * 0.02,
            ),
            SizedBox(
              height: size.height * 0.05,
              width: size.width * 0.2,
              child: const TextField(
                keyboardType: TextInputType.number,
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Numero 2',
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          width: size.width * 0.02,
        ),
        const Text(
          "Resultado",
          style: TextStyle(
            color: Colors.black,
            decoration: TextDecoration.none,
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: size.height * 0.05,
          width: size.width * 0.2,
          child: const TextField(
            enabled: false, 
            keyboardType: TextInputType.number,
            obscureText: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: '',
            ),
          ),
        ),
      ],
    );
  }
}
