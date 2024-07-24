import 'package:flutter/material.dart';
import 'package:gymcompass/data/workout_inherited.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key, required this.workoutContext});
  final BuildContext workoutContext;
  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {

  TextEditingController nameController = TextEditingController();
  TextEditingController levelController = TextEditingController();
  TextEditingController amountTrainingController = TextEditingController();
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Novo treino"),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              height: 650,
              width: 375,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1)
              ),
              child:Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      validator: (String? value){
                        if(value != null && value.isEmpty){
                          return 'Insira o nome da tarefa';
                        }
                        return null;
                      },
                      controller: nameController,
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Nome',
                        fillColor: Colors.white70,
                        filled: true
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      validator: (value){
                        if(value!.isEmpty || int.parse(value)>5 || int.parse(value)<1){
                          return 'Insira um número entre 1 e 5';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.number,
                      controller: levelController,
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Nível',
                          fillColor: Colors.white70,
                          filled: true
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      validator: (value){
                        if(value!.isEmpty || int.parse(value)<1){
                          return 'Insira uma quantidade de treinos maior que 1';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.number,
                      controller: amountTrainingController,
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Quantidade de treinos',
                          fillColor: Colors.white70,
                          filled: true
                      ),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: (){
                        if(_formKey.currentState!.validate()) {
                          // print(nameController.text);
                          // print(int.parse(levelController.text));
                          // print(int.parse(amountTrainingController.text));
                          WorkoutInherited.of(widget.workoutContext).newWorkout(nameController.text, int.parse(levelController.text), int.parse(amountTrainingController.text));
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                              content: Text("Treino salvo com sucesso!"))
                          );
                          Navigator.pop(context);
                        }
                      },
                      child: Text('Adicionar'),
                  ),
                ],
              )
            ),
          ),
        ),
      ),
    );
  }
}
