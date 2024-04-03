import 'package:banx/core/designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:banx/core/domain/entities/address_entity.dart';
import 'package:flutter/material.dart';

class AddAddressContent extends StatefulWidget {
  final Function(AddressEntity updatedAddress) onAddAddressSubmitted;
  final bool showLoading;
  final AddressEntity addressEntity;

  const AddAddressContent({
    super.key,
    required this.showLoading,
    required this.onAddAddressSubmitted,
    required this.addressEntity,
  });

  @override
  State<AddAddressContent> createState() => _AddAddressContentState();
}

class _AddAddressContentState extends State<AddAddressContent> {
  final _formKey = GlobalKey<FormState>();

  // Create TextEditingControllers for each field
  late TextEditingController _addressController;
  late TextEditingController _regionController;
  late TextEditingController _streetController;
  late TextEditingController _plaqueController;
  late TextEditingController _floorController;
  late TextEditingController _unitController;
  late TextEditingController _houseNameController;

  @override
  void initState() {
    super.initState();

    // Initialize the TextEditingControllers with the initial values from AddressEntity
    _addressController =
        TextEditingController(text: widget.addressEntity.address);
    _regionController =
        TextEditingController(text: widget.addressEntity.region);
    _streetController =
        TextEditingController(text: widget.addressEntity.street);
    _plaqueController =
        TextEditingController(text: widget.addressEntity.plaque);
    _floorController = TextEditingController(text: widget.addressEntity.floor);
    _unitController = TextEditingController(text: widget.addressEntity.unit);
    _houseNameController =
        TextEditingController(text: widget.addressEntity.houseName);
  }

  @override
  void dispose() {
    // Dispose of the controllers when the widget is disposed
    _addressController.dispose();
    _regionController.dispose();
    _streetController.dispose();
    _plaqueController.dispose();
    _floorController.dispose();
    _unitController.dispose();
    _houseNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        centerTitle: false,
        automaticallyImplyLeading: false,
        titleTextStyle: Theme.of(context).textTheme.headlineMedium,
        title: const Text('آدرس دریافت کارت'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSurfaceVariant),
                          'درصورت نیاز آدرس را ویرایش و ذخیره کنید',
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            // Pre-populated address field
                            TextFormField(
                              controller: _regionController,
                              autofocus: true,
                              keyboardType: TextInputType.multiline,
                              maxLines: null,
                              readOnly: true,
                              enabled: false,
                            ),
                            const SizedBox(height: 16.0),

                            // Pre-populated region field
                            TextFormField(
                              controller: _streetController,
                              autofocus: true,
                              keyboardType: TextInputType.multiline,
                              maxLines: null,
                              decoration: const InputDecoration(
                                  labelText: "خیابان اصلی و فرعی"),
                            ),
                            const SizedBox(height: 16.0),

                            // Pre-populated street and plaque fields
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    controller: _plaqueController,
                                    autofocus: true,
                                    maxLines: null,
                                    keyboardType: TextInputType.number,
                                    decoration:
                                        const InputDecoration(labelText: "پلاک"),
                                  ),
                                ),
                                const SizedBox(width: 16.0),
                                Expanded(
                                  child: TextFormField(
                                    controller: _houseNameController,
                                    autofocus: true,
                                    keyboardType: TextInputType.text,
                                    maxLines: null,
                                    decoration: const InputDecoration(
                                      labelText: "نام ساختمان یا بلوک",
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16.0),

                            // Pre-populated floor and unit fields
                            Row(
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    controller: _floorController,
                                    autofocus: true,
                                    keyboardType: TextInputType.number,
                                    maxLines: null,
                                    decoration:
                                        const InputDecoration(labelText: "طبقه"),
                                  ),
                                ),
                                const SizedBox(width: 16.0),
                                Expanded(
                                  child: TextFormField(
                                    controller: _unitController,
                                    autofocus: true,
                                    keyboardType: TextInputType.number,
                                    maxLines: null,
                                    decoration:
                                        const InputDecoration(labelText: "واحد"),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16.0),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // PrimaryFillButton to submit the form
              PrimaryFillButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState?.save();
                    FocusManager.instance.primaryFocus?.unfocus();

                    // Update the AddressEntity with new values from the text fields
                    final updatedAddress = AddressEntity(
                      id: widget.addressEntity.id,
                      accountId: widget.addressEntity.accountId,
                      postalCode: widget.addressEntity.postalCode,
                      address: _addressController.text,
                      region: _regionController.text,
                      street: _streetController.text,
                      plaque: _plaqueController.text,
                      floor: _floorController.text,
                      unit: _unitController.text,
                      houseName: _houseNameController.text,
                      city: widget.addressEntity.city,
                      province: widget.addressEntity.province,
                    );

                    // Call the submission callback with the updated address
                    widget.onAddAddressSubmitted(updatedAddress);
                  }
                },
                label: 'تأیید و ادامه',
                isLoading: widget.showLoading,
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
