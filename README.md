

# 1. Instalar o Flutter na sua máquina

## 📥 Baixar o Flutter

Acesse: https://docs.flutter.dev/get-started/install

Escolha seu sistema operacional (Windows / MacOS / Linux).

Baixe o arquivo .zip do Flutter SDK.

## 📂 Instalar o Flutter

Descompacte o arquivo baixado em C:\src\flutter (no Windows) ou uma pasta segura no Mac/Linux.

Depois adicione o Flutter no Path do sistema:

No Windows:

Pesquise "variáveis de ambiente" → clique em Editar variáveis de ambiente do sistema → Variáveis de Ambiente → em "Path" → clique em Editar → Novo → adicione:


````C:\src\flutter\bin````


## 📦 Verificar instalação
Abra o terminal e digite:

flutter doctor
Esse comando vai mostrar o que já está instalado e o que ainda falta instalar.

# 2. Instalar o Android Studio

## 📥 Baixar o Android Studio
Acesse: https://developer.android.com/studio

Baixe e instale o Android Studio normalmente.

⚙️ Configurar o Android Studio para Flutter
Abra o Android Studio → Clique em Settings (ou Configure se for na primeira tela).

Vá em Plugins → Pesquise Flutter e instale.

Ele vai pedir também para instalar o plugin Dart → aceite.

## 📦 Instalar SDKs necessários
Ainda nas configurações do Android Studio:

Vá em SDK Manager (geralmente no menu de configurações rápidas).

Verifique se estão instalados:

Android SDK

Android SDK Platform-Tools

Android SDK Build-Tools

Android 11, 12 ou 13 (API 30, 31, 32)

Se não tiver, instale.

# 3. Configurar o Emulador (Pixel 5)
## 🧩 Criar um dispositivo virtual
Abra o Android Studio → clique em Device Manager (ícone de telefone no topo ou Tools > Device Manager).

Clique em Create Device.

Escolha:

Phone → Pixel 5

Avance:

Selecione uma imagem do Android (recomendo Android 12 API 31 ou Android 11 API 30).

Baixe se necessário → Next → Finish.

🛜 Iniciar o emulador
No Device Manager → clique no botão de play ▶️ no Pixel 5 criado.

O emulador vai abrir! (pode demorar um pouquinho da primeira vez).

#4. Rodar o Projeto Flutter
## 📂 Abrir seu projeto Flutter
No Android Studio → Open → selecione a pasta do seu projeto Flutter.

Se ainda não tiver projeto:

Android Studio → New Flutter Project → Flutter Application → preencha o nome e a pasta.

## ▶️ Rodar o app
Certifique-se de que o emulador Pixel 5 esteja aberto.

No Android Studio:

No canto superior, selecione seu dispositivo (Pixel 5).

Clique no botão verde de Play ▶️.

Aguarde compilar... o app vai aparecer no emulador!




