import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xcomponents/features/product/bloc/product_bloc.dart';
import 'package:xcomponents/xcomponets/components/x_app_bar.dart';
import 'package:xcomponents/xcomponets/components/x_scaffold.dart';
import 'package:xcomponents/xcomponets/components/x_text_field.dart';

class ProductPage extends StatelessWidget {
  ProductPage({Key? key}) : super(key: key);
  final GlobalKey _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    var productBloc = BlocProvider.of<ProductBloc>(context);
    // var product = productBloc.product;
    return XScaffold(
      appBar: XAppBar(
        title: Text('XProducts'),
      ).build(context),
      body: Container(
        padding: EdgeInsetsDirectional.all(24),
        child: Form(
          key: _key,
          child: BlocBuilder<ProductBloc, ProductState>(
            bloc: productBloc,
            builder: (context, state) {
              var productState = (state as ProductDefaultState);
              var product = productState.product;
              return ListView(
                children: [
                  XTextField(
                    label: 'Nome',
                    validator: product.name.length > 3
                        ? 'nome deve ter 3 letras'
                        : null,
                    onChanged: (String name) => productBloc.add(
                      ProductEventUpdate(
                        name: name,
                      ),
                    ),
                  ).build(context),
                  Divider(
                    height: 15,
                  ),
                  XTextField(
                    label: 'Categoria',
                    validator: product.category.length < 3
                        ? 'categoria deve ter mais de 3 letras'
                        : null,
                    onChanged: (String categoria) => productBloc.add(
                      ProductEventUpdate(
                        category: categoria,
                      ),
                    ),
                  ).build(context),
                  Divider(
                    height: 15,
                  ),
                  XTextField(
                    label: 'Valor',
                    validator: product.value.isNaN ? 'type value' : null,
                    onChanged: (String value) => productBloc.add(
                      ProductEventUpdate(
                        value: double.parse(value),
                      ),
                    ),
                  ).build(context),
                  Divider(
                    height: 15,
                  ),
                  Divider(
                    height: 5,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Nome == ${product.name}'),
                        Text('Categoria == ${product.category}'),
                        Text('Valor == ${product.value.toString()}'),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    ).build(context);
  }
}
