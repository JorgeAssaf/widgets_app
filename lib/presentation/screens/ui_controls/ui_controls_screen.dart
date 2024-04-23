import 'package:flutter/material.dart';

enum Transports { car, bike, boat, plane }

class UiControlsScreen extends StatefulWidget {
  const UiControlsScreen({super.key});

  @override
  State<UiControlsScreen> createState() => _UiControlsScreenState();
}

class _UiControlsScreenState extends State<UiControlsScreen> {
  bool _developerMode = false;

  bool _wantBreakfast = false;
  bool _wantLunch = false;
  bool _wantDinner = false;

  Transports _selectedTransport = Transports.car;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Controles de UI'),
      ),
      body: ListView(
        physics: const ClampingScrollPhysics(),
        children: [
          SwitchListTile.adaptive(
            title: const Text('Developer Mode'),
            subtitle: const Text('Activar modo desarrollador'),
            value: _developerMode,
            onChanged: (value) {
              setState(() {
                _developerMode = value;
              });
            },
          ),
          ExpansionTile(
            title: const Text('Transporte'),
            subtitle: const Text('Selecciona tu transporte favorito'),
            children: [
              RadioListTile(
                title: const Text('Car'),
                subtitle: const Text('Transporte en coche'),
                toggleable: true,
                value: Transports.car,
                groupValue: _selectedTransport,
                onChanged: (value) {
                  setState(() {
                    _selectedTransport = Transports.car;
                  });
                },
              ),
              RadioListTile(
                title: const Text('Bike'),
                subtitle: const Text('Transporte en bicicleta'),
                toggleable: true,
                value: Transports.bike,
                groupValue: _selectedTransport,
                onChanged: (value) {
                  setState(() {
                    _selectedTransport = Transports.bike;
                  });
                },
              ),
              RadioListTile(
                title: const Text('Boat'),
                subtitle: const Text('Transporte en barco'),
                toggleable: true,
                value: Transports.boat,
                groupValue: _selectedTransport,
                onChanged: (value) {
                  setState(() {
                    _selectedTransport = Transports.boat;
                  });
                },
              ),
              RadioListTile(
                title: const Text('Plane'),
                subtitle: const Text('Transporte en avión'),
                toggleable: true,
                value: Transports.plane,
                groupValue: _selectedTransport,
                onChanged: (value) {
                  setState(() {
                    _selectedTransport = Transports.plane;
                  });
                },
              ),
            ],
          ),
          CheckboxListTile(
            title: const Text('Desayuno'),
            value: _wantBreakfast,
            onChanged: (value) {
              setState(() {
                _wantBreakfast = !_wantBreakfast;
              });
            },
          ),
          CheckboxListTile(
            title: const Text('Almuerzo'),
            value: _wantLunch,
            onChanged: (value) {
              setState(() {
                _wantLunch = !_wantLunch;
              });
            },
          ),
          CheckboxListTile(
            title: const Text('Checkbox'),
            value: _wantDinner,
            onChanged: (value) {
              setState(() {
                _wantDinner = !_wantDinner;
              });
            },
          )
        ],
      ),
    );
  }
}
