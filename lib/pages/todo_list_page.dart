import 'package:flutter/material.dart';

class TodoListPage extends StatelessWidget {
  TodoListPage({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Adicione uma tarefa',
                        hintText: 'Ex.: Estudar Flutter',
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF00D7F3),
                      padding: const EdgeInsets.all(14),
                    ),
                    onPressed: () {},
                    child: const Icon(
                      Icons.add,
                      size: 30,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 80,
              ),
              Row(
                children: [
                  const Expanded(
                    child: Text(
                      'Você possui zero tarefas pendentes',
                    ),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF00D7F3),
                      padding: const EdgeInsets.all(14),
                    ),
                    child: const Text('Limpar tudo'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
