// import 'package:flutter/material.dart';
// import 'package:jisr_almharat/features/application/data/module/appllcition_modul.dart';
// import 'package:jisr_almharat/features/application/logic/locator.dart';
// import 'package:jisr_almharat/features/application/logic/view_modul.dart';
// import 'package:provider/provider.dart';

// class ApplicationView extends StatelessWidget {
//   const ApplicationView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (_) => ApplicationViewModel(applicationRepository),
//       child: Scaffold(
//         appBar: AppBar(title: const Text('New Application')),
//         body: const _ApplicationForm(),
//       ),
//     );
//   }
// }

// class _ApplicationForm extends StatefulWidget {
//   const _ApplicationForm();

//   @override
//   State<_ApplicationForm> createState() => _ApplicationFormState();
// }

// class _ApplicationFormState extends State<_ApplicationForm> {
//   final _formKey = GlobalKey<FormState>();
//   final _organizationNameController = TextEditingController();
//   final _organizationEmailController = TextEditingController();
//   final _kindController = TextEditingController();
//   final _jobNameController = TextEditingController();
//   final _applicantNameController = TextEditingController();
//   final _emailController = TextEditingController();

//   @override
//   void dispose() {
//     _organizationNameController.dispose();
//     _organizationEmailController.dispose();
//     _kindController.dispose();
//     _jobNameController.dispose();
//     _applicantNameController.dispose();
//     _emailController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final viewModel = context.watch<ApplicationViewModel>();

//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Form(
//         key: _formKey,
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               _buildTextField('Organization Name', _organizationNameController),
//               const SizedBox(height: 16),
//               _buildTextField(
//                   'Organization Email', _organizationEmailController,
//                   isEmail: true),
//               const SizedBox(height: 16),
//               _buildTextField('Kind', _kindController),
//               const SizedBox(height: 16),
//               _buildTextField('Job Name', _jobNameController),
//               const SizedBox(height: 16),
//               _buildTextField('Applicant Name', _applicantNameController),
//               const SizedBox(height: 16),
//               _buildTextField('Email', _emailController, isEmail: true),
//               const SizedBox(height: 24),
//               if (viewModel.errorMessage != null)
//                 Text(
//                   viewModel.errorMessage!,
//                   style: TextStyle(color: Theme.of(context).colorScheme.error),
//                 ),
//               const SizedBox(height: 16),
//               viewModel.isLoading
//                   ? const CircularProgressIndicator()
//                   : ElevatedButton(
//                       onPressed: () => _submitForm(context),
//                       child: const Text('Submit Application'),
//                     ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildTextField(String label, TextEditingController controller,
//       {bool isEmail = false}) {
//     return TextFormField(
//       controller: controller,
//       decoration: InputDecoration(
//         labelText: label,
//         border: const OutlineInputBorder(),
//       ),
//       validator: (value) => value?.isEmpty ?? true ? 'Required field' : null,
//       keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
//     );
//   }

//   Future<void> _submitForm(BuildContext context) async {
//     if (_formKey.currentState!.validate()) {
//       final application = ApplicationModel(
//         organizationName: _organizationNameController.text,
//         organizationEmail: _organizationEmailController.text,
//         kind: _kindController.text,
//         jobName: _jobNameController.text,
//         applicantName: _applicantNameController.text,
//         email: _emailController.text,
//       );

//       final response = await context
//           .read<ApplicationViewModel>()
//           .submitApplication(application);

//       if (response.success) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(content: Text('Application submitted successfully!')),
//         );
//         Navigator.pop(context);
//       }
//     }
//   }
// }
