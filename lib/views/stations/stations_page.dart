import 'package:flutter/material.dart';

class StationsPage extends StatefulWidget {
  const StationsPage({super.key});

  @override
  State<StationsPage> createState() => _StationsPageState();
}

class _StationsPageState extends State<StationsPage> {
  final TextEditingController _searchController = TextEditingController();
  String _selectedState = 'Todos';
  final List<String> _states = [
    'Todos',
    'SP',
    'RJ',
    'MG',
    'RS',
    'PR',
    'SC',
    'BA',
    'PE',
    'CE',
    'DF'
  ];

  final List<Ecopoint> _ecopoints = [
    Ecopoint(
      name: 'Ecoponto Vila Mariana',
      address: 'R. Domingos Fernandes, 100 - Vila Mariana',
      city: 'São Paulo',
      state: 'SP',
      description: 'Aceita plástico, metal, vidro e papel. Aberto de seg a sab das 8h às 18h.',
      imagePath: 'assets/images/map_sample.png',
    ),
    Ecopoint(
      name: 'Ecoponto Ipiranga',
      address: 'Av. Nazaré, 1361 - Ipiranga',
      city: 'São Paulo',
      state: 'SP',
      description: 'Centro de coleta com separação de materiais. Possui ponto de coleta de óleo usado.',
      imagePath: 'assets/images/map_sample.png',
    ),
    Ecopoint(
      name: 'Ecoponto Tatuapé',
      address: 'R. Tuiuti, 1857 - Tatuapé',
      city: 'São Paulo',
      state: 'SP',
      description: 'Ecoponto moderno com capacidade para 5 toneladas/dia. Aceita eletrônicos.',
      imagePath: 'assets/images/map_sample.png',
    ),
    Ecopoint(
      name: 'Ecoponto Copacabana',
      address: 'R. Siqueira Campos, 125 - Copacabana',
      city: 'Rio de Janeiro',
      state: 'RJ',
      description: 'Ponto de coleta na orla. Aceita materiais recicláveis e pilhas.',
      imagePath: 'assets/images/map_sample.png',
    ),
    Ecopoint(
      name: 'Ecoponto Barra da Tijuca',
      address: 'Av. das Américas, 3500 - Barra da Tijuca',
      city: 'Rio de Janeiro',
      state: 'RJ',
      description: 'Grande centro de coleta com compactação de materiais.',
      imagePath: 'assets/images/map_sample.png',
    ),
    Ecopoint(
      name: 'Ecoponto Niterói',
      address: 'R. Presidente Backer, 145 - Centro',
      city: 'Niterói',
      state: 'RJ',
      description: 'Ecoponto municipal com programa de coleta seletiva.',
      imagePath: 'assets/images/map_sample.png',
    ),
    Ecopoint(
      name: 'Ecoponto Savassi',
      address: 'R. Antônio de Albuquerque, 330 - Savassi',
      city: 'Belo Horizonte',
      state: 'MG',
      description: 'Ponto de coleta no centro de BH. Aceita materiais especiais.',
      imagePath: 'assets/images/map_sample.png',
    ),
    Ecopoint(
      name: 'Ecoponto Pampulha',
      address: 'Av. Antônio Abrahão Caram, 200 - Pampulha',
      city: 'Belo Horizonte',
      state: 'MG',
      description: 'Ecoponto próximo à lagoa da Pampulha. Coleta diferenciada.',
      imagePath: 'assets/images/map_sample.png',
    ),
    Ecopoint(
      name: 'Ecoponto Contagem',
      address: 'R. Rio de Janeiro, 1440 - Centro',
      city: 'Contagem',
      state: 'MG',
      description: 'Unidade de tratamento de resíduos da região metropolitana.',
      imagePath: 'assets/images/map_sample.png',
    ),
    Ecopoint(
      name: 'Ecoponto Moinhos de Vento',
      address: 'R. Félix da Cunha, 400 - Moinhos de Vento',
      city: 'Porto Alegre',
      state: 'RS',
      description: 'Posto avançado de coleta seletiva. Aberto 24h.',
      imagePath: 'assets/images/map_sample.png',
    ),
    Ecopoint(
      name: 'Ecoponto Centro Histórico',
      address: 'Largo Glênio Peres, 1 - Centro',
      city: 'Porto Alegre',
      state: 'RS',
      description: 'Ecoponto municipal com orientação sobre reciclagem.',
      imagePath: 'assets/images/map_sample.png',
    ),
    Ecopoint(
      name: 'Ecoponto Cidade Baixa',
      address: 'Av. João Pessoa, 300 - Cidade Baixa',
      city: 'Porto Alegre',
      state: 'RS',
      description: 'Aceita todos os tipos de materiais recicláveis.',
      imagePath: 'assets/images/map_sample.png',
    ),
    Ecopoint(
      name: 'Ecoponto Batel',
      address: 'R. Presidente Taunay, 200 - Batel',
      city: 'Curitiba',
      state: 'PR',
      description: 'Posto de coleta com separação automática de materiais.',
      imagePath: 'assets/images/map_sample.png',
    ),
    Ecopoint(
      name: 'Ecoponto Centro Cívico',
      address: 'Av. Cândido de Abreu, 500 - Centro Cívico',
      city: 'Curitiba',
      state: 'PR',
      description: 'Ecoponto modelo da prefeitura. Possui triturador de vidro.',
      imagePath: 'assets/images/map_sample.png',
    ),
    Ecopoint(
      name: 'Ecoponto Santa Felicidade',
      address: 'R. Santa Bertila Boscardin, 200 - Santa Felicidade',
      city: 'Curitiba',
      state: 'PR',
      description: 'Ponto de coleta em região tradicional da cidade.',
      imagePath: 'assets/images/map_sample.png',
    ),
    Ecopoint(
      name: 'Ecopoint Beira-Mar',
      address: 'Av. Beira-Mar Norte, 1000 - Centro',
      city: 'Florianópolis',
      state: 'SC',
      description: 'Ecoponto à beira-mar com coleta de materiais especiais.',
      imagePath: 'assets/images/map_sample.png',
    ),
    Ecopoint(
      name: 'Ecoponto Trindade',
      address: 'R. Eng. Agronômico Andrei Cristian Ferreira, 200 - Trindade',
      city: 'Florianópolis',
      state: 'SC',
      description: 'Ponto de coleta próximo à UFSC. Aceita materiais universitários.',
      imagePath: 'assets/images/map_sample.png',
    ),
    Ecopoint(
      name: 'Ecoponto Lagoa',
      address: 'Av. das Rendeiras, 100 - Lagoa da Conceição',
      city: 'Florianópolis',
      state: 'SC',
      description: 'Ecoponto turístico com orientação em vários idiomas.',
      imagePath: 'assets/images/map_sample.png',
    ),
    Ecopoint(
      name: 'Ecoponto Barra',
      address: 'Av. Oceânica, 100 - Barra',
      city: 'Salvador',
      state: 'BA',
      description: 'Ponto de coleta na orla de Salvador. Coleta de materiais pesados.',
      imagePath: 'assets/images/map_sample.png',
    ),
    Ecopoint(
      name: 'Ecoponto Pelourinho',
      address: 'R. das Laranjeiras, 15 - Pelourinho',
      city: 'Salvador',
      state: 'BA',
      description: 'Ecoponto histórico com programa de reciclagem cultural.',
      imagePath: 'assets/images/map_sample.png',
    ),
    Ecopoint(
      name: 'Ecoponto Itaigara',
      address: 'Av. Antônio Carlos Magalhães, 1000 - Itaigara',
      city: 'Salvador',
      state: 'BA',
      description: 'Ecoponto moderno com compactador de materiais.',
      imagePath: 'assets/images/map_sample.png',
    ),
    Ecopoint(
      name: 'Ecoponto Boa Viagem',
      address: 'Av. Boa Viagem, 500 - Boa Viagem',
      city: 'Recife',
      state: 'PE',
      description: 'Ponto de coleta na praia de Boa Viagem. Coleta de materiais especiais.',
      imagePath: 'assets/images/map_sample.png',
    ),
    Ecopoint(
      name: 'Ecoponto Recife Antigo',
      address: 'R. do Bom Jesus, 100 - Recife Antigo',
      city: 'Recife',
      state: 'PE',
      description: 'Ecoponto no centro histórico com programa de reciclagem artística.',
      imagePath: 'assets/images/map_sample.png',
    ),
    Ecopoint(
      name: 'Ecoponto Cordeiro',
      address: 'R. Dom José Lopes, 200 - Cordeiro',
      city: 'Recife',
      state: 'PE',
      description: 'Ponto de coleta com separação automatizada.',
      imagePath: 'assets/images/map_sample.png',
    ),
    Ecopoint(
      name: 'Ecoponto Meireles',
      address: 'Av. Desembargador Moreira, 100 - Meireles',
      city: 'Fortaleza',
      state: 'CE',
      description: 'Ecoponto na região nobre de Fortaleza. Coleta seletiva 24h.',
      imagePath: 'assets/images/map_sample.png',
    ),
    Ecopoint(
      name: 'Ecoponto Praia de Iracema',
      address: 'Av. Pres. Castelo Branco, 400 - Praia de Iracema',
      city: 'Fortaleza',
      state: 'CE',
      description: 'Ponto de coleta à beira-mar com programa de reciclagem de pesca.',
      imagePath: 'assets/images/map_sample.png',
    ),
    Ecopoint(
      name: 'Ecoponto Aldeota',
      address: 'R. Carlos Vasconcelos, 100 - Aldeota',
      city: 'Fortaleza',
      state: 'CE',
      description: 'Ecoponto com sistema de triagem automatizado.',
      imagePath: 'assets/images/map_sample.png',
    ),
    Ecopoint(
      name: 'Ecoponto Asa Sul',
      address: 'CLS 403 Bloco B - Asa Sul',
      city: 'Brasília',
      state: 'DF',
      description: 'Ponto de coleta no centro de Brasília. Aceita materiais especiais.',
      imagePath: 'assets/images/map_sample.png',
    ),
    Ecopoint(
      name: 'Ecoponto Asa Norte',
      address: 'CLN 307 Bloco A - Asa Norte',
      city: 'Brasília',
      state: 'DF',
      description: 'Ecoponto com sistema de logística reversa.',
      imagePath: 'assets/images/map_sample.png',
    ),
    Ecopoint(
      name: 'Ecoponto Lago Sul',
      address: 'SHIS QI 15 Bloco E - Lago Sul',
      city: 'Brasília',
      state: 'DF',
      description: 'Ponto de coleta em região residencial de alto padrão.',
      imagePath: 'assets/images/map_sample.png',
    ),
  ];

  List<Ecopoint> get _filteredEcopoints {
    if (_selectedState == 'Todos' && _searchController.text.isEmpty) {
      return _ecopoints;
    }

    return _ecopoints.where((ecopoint) {
      final matchesState = _selectedState == 'Todos' || ecopoint.state == _selectedState;
      final matchesSearch = _searchController.text.isEmpty ||
          ecopoint.name.toLowerCase().contains(_searchController.text.toLowerCase()) ||
          ecopoint.city.toLowerCase().contains(_searchController.text.toLowerCase());
      return matchesState && matchesSearch;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ecopontos'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Barra de pesquisa e filtro
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: 'Pesquisar ecopontos...',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                  onChanged: (value) => setState(() {}),
                ),
                const SizedBox(height: 12),
                DropdownButtonFormField<String>(
                  value: _selectedState,
                  items: _states.map((state) {
                    return DropdownMenuItem(
                      value: state,
                      child: Text(state),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedState = value!;
                    });
                  },
                  decoration: InputDecoration(
                    labelText: 'Filtrar por estado',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                ),
              ],
            ),
          ),
          // Lista de ecopontos
          Expanded(
            child: ListView.builder(
              itemCount: _filteredEcopoints.length,
              itemBuilder: (context, index) {
                final ecopoint = _filteredEcopoints[index];
                return _buildEcopointCard(ecopoint);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEcopointCard(Ecopoint ecopoint) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        // Imagem do mapa com padding
        Padding(
          padding: const EdgeInsets.all(8.0), // Ajuste o valor conforme necessário
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
            child: Image.asset(
              ecopoint.imagePath,
              width: 130,
              height: 220,
              fit: BoxFit.cover,
            ),
          ),
        ),
          // Informações do ecoponto
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ecopoint.name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${ecopoint.city} - ${ecopoint.state}',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    ecopoint.address,
                    style: const TextStyle(fontSize: 13),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    ecopoint.description,
                    style: const TextStyle(fontSize: 12),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          // Ação para ver mais detalhes
                        },
                        child: const Text('Ver no mapa'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Ecopoint {
  final String name;
  final String address;
  final String city;
  final String state;
  final String description;
  final String imagePath;

  Ecopoint({
    required this.name,
    required this.address,
    required this.city,
    required this.state,
    required this.description,
    required this.imagePath,
  });
}