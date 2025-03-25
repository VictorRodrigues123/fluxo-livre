import 'package:app_fluxolivre/src/widget/input_login_widget.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/img_fundologin.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(26.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Quadro de fundo arredondado para o texto "Tela de Cadastro"
              Container(
                padding: const EdgeInsets.all(20), // Espaço interno do Container
                decoration: BoxDecoration(
                  color: const Color(0xFFAFAE24), // Cor de fundo
                  borderRadius: BorderRadius.circular(20), // Cantos arredondados
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 10,
                      offset: const Offset(0, 4), // Sombra suave
                    ),
                  ],
                ),
                child: const Text(
                  'Tela de Cadastro',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                    color: Color.fromARGB(255, 0, 60, 255),
                  ),
                  textAlign: TextAlign.center, // Alinha o texto no centro
                ),
              ),
              const SizedBox(height: 30),
              InputLoginWidget(
                icon: Icons.person_outline,
                hint: 'Nome de usuário',
                obscure: false,
              ),
              InputLoginWidget(
                icon: Icons.email_outlined,
                hint: 'Email',
                obscure: false,
              ),
              InputLoginWidget(
                icon: Icons.contact_page_rounded,
                hint: 'CPF',
                obscure: false,
              ),
              InputLoginWidget(
                icon: Icons.lock_outline,
                hint: 'Digite sua senha',
                obscure: true,
              ),
              InputLoginWidget(
                icon: Icons.lock,
                hint: 'Confirmação de senha',
                obscure: true,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFAFAE24),
                  minimumSize: const Size(double.infinity, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/');
                },
                child: const Text(
                  'Registrar',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF031C5F),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/');
                },
                child: const Text(
                  'Voltar para tela de login',
                  style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
