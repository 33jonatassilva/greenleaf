import 'package:flutter/material.dart';
import '../../services/user_service.dart';
import '../../models/user_model.dart';

class ProfilePage extends StatefulWidget {
  final UserService userService;
  
  const ProfilePage({super.key, required this.userService});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late TextEditingController _nameController;
  late TextEditingController _cityController;
  late TextEditingController _stateController;
  late TextEditingController _emailController;
  late TextEditingController _phoneController;
  late TextEditingController _addressController;

  @override
  void initState() {
    super.initState();
    final user = widget.userService.currentUser; // Agora está correto
    _nameController = TextEditingController(text: user.name);
    _cityController = TextEditingController(text: user.city);
    _stateController = TextEditingController(text: user.state);
    _emailController = TextEditingController(text: user.email);
    _phoneController = TextEditingController(text: user.phone);
    _addressController = TextEditingController(text: user.address);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _cityController.dispose();
    _stateController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _addressController.dispose();
    super.dispose();
  }

  void _saveProfile() {
    final updatedUser = widget.userService.currentUser.copyWith(
      name: _nameController.text,
      city: _cityController.text,
      state: _stateController.text,
      email: _emailController.text,
      phone: _phoneController.text,
      address: _addressController.text,
    );
    widget.userService.updateUser(updatedUser);
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Perfil atualizado com sucesso!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meu Perfil'),
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: _saveProfile,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/user_avatar.png'),
            ),
            const SizedBox(height: 20),
            _buildProfileField('Nome Completo', _nameController),
            _buildProfileField('Cidade', _cityController),
            _buildProfileField('Estado', _stateController),
            _buildProfileField('Email', _emailController),
            _buildProfileField('Telefone', _phoneController),
            _buildProfileField('Endereço', _addressController),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileField(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}