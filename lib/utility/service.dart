import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService
{
  String documentIdOfBuyProduct;
// fetching id's of documents of buyproduct collection
  getDocumentId() async
   {
       DocumentReference ref = await Firestore.instance.collection("buy products").document();
       documentIdOfBuyProduct = ref.documentID;
    }
  // fetching data of subcollection of that document id
  getProducts() async
   {
        return await Firestore.instance.collection("buy products")
        .document(documentIdOfBuyProduct)
        .collection("products")
        .getDocuments();
   }
}