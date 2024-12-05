Equipe de desenvolvimento: Endric Mateus Frühauf
Tela de login: Ao abrir o aplicativo pela primeira vez, o usuario é direcionado para a tela de login, onde ao clicar em qualquer lugar da tela será direcionado para a ferramenta de login do Google.
Tela Home: Ao efetuar o login é direcionado para a tela Home, onde há um botão de Logout, após efetuado Logout, o usuario será direcionado a tela de Login novamente.

Depêndencias utilizadas:
firebase_auth: ^5.3.3
google_sign_in: ^6.2.2
firebase_core: ^3.8.0
flutter_launcher_icons: ^0.13.1
Versões do Flutter/Dart:
Flutter 3.24.3
Dart 3.5.3
Versão mínima do SDK: 23

Como importar o projeto:
1- Importar dependências:
No terminal, execute o comando flutter pub get para importar as dependências necessárias.

2 - Configurar Firebase:
Crie um novo projeto no Firebase.
Ative a autenticação na aba de configurações de autenticação.
No painel inicial do projeto no Firebase, configure a integração com Flutter seguindo as instruções fornecidas.

3 - Autenticar no Firebase CLI:
No terminal do projeto, execute firebase login para fazer login no Firebase CLI.
Siga os comandos indicados pelo Firebase no terminal para concluir a configuração.

4 - Habilitar o Google Sign-In:
Para usar o Google Sign-In, é necessário configurar a impressão digital do projeto.
Obtenha a chave SHA-1 de uma das seguintes formas:
Executando o comando ./gradlew signingReport no terminal.
Ou utilizando:
" keytool -exportcert -keystore "caminho_do_debug.keystore (exemplo: C:\Users\seuUsuario\.android\debug.keystore)" -list -v  "
No Firebase, acesse as configurações do projeto, vá até "Apps Android", e insira a chave SHA-1 na seção de impressões digitais.
