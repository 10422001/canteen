class FoodItem {

   final String pathToImageLinkOrAsset;
   final String nameOfDish;
   final int price;
   final List<int> ratingTaste;
   final List<int> ratingAmount;

  const FoodItem({
    // this.pathToImageLinkOrAsset = 'assets/images/food_logo.png',
    this.pathToImageLinkOrAsset = 'assets/images/food/image_rand0.png',
      this.nameOfDish = 'example dish',
      this.price =  25000,
      this.ratingTaste = const[10],
      this.ratingAmount = const [10]});

  @override
  String toString(){
    return 'toStringMethode';
  }

  String getImage() {   //ToDo Change to return Image
    return pathToImageLinkOrAsset;
  }

}