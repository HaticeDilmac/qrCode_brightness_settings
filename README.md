# QR Code Screen Brightness Example

This Flutter application demonstrates how to generate a QR code and control screen brightness based on navigation events.

## Description

The app consists of a single page (`RouteAwarePage`) where a QR code is displayed with a URL link. The QR code leads to a shortened URL directing to a specific destination. As soon as this page is opened, the screen brightness automatically increases, thus solving the problem of not being able to read the code due to brightness during turnstile passages.

When navigating to and from the `RouteAwarePage`, the screen brightness is adjusted accordingly:
- When the page is pushed, the brightness is set to 70%.
- When navigating away from the page, the brightness is reset to its default value.

## Technologies Used
- Flutter
- qr_flutter package for generating QR codes
- screen_brightness package for controlling screen brightness

## How to Use
1. Clone the repository to your local machine.
2. Ensure you have Flutter installed and set up on your machine.
3. Open the project in your preferred code editor.
4. Run `flutter pub get` to install dependencies.
5. Run the app using `flutter run`.

## Screenshots
 

## Contributing
Contributions are welcome! Please feel free to fork the repository and submit pull requests to contribute to this project.
 

 ------------------------------------------------------------------


# QR Kod Sayfası Parlaklık Örneği

Bu Flutter uygulaması, bir QR kodu oluşturmayı ve navigasyon olaylarına bağlı olarak ekran parlaklığını kontrol etmeyi göstermektedir.

## Açıklama

Uygulama, bir QR kodunun görüntülendiği tek bir sayfadan (`RouteAwarePage`) oluşur. QR kodu, bir URL bağlantısıyla birlikte görüntülenir. QR kodu, belirli bir hedefe yönlendiren kısaltılmış bir URL'ye gider.Bu sayfa açılır açılmaz ekran parlaklığı otomatik yükselir bu şekilde turnike geçişlerinde parlaklıktan dolayı kodun okunmaması olayı çözülmüş olur.

`RouteAwarePage`'e gidildiğinde ve oradan ayrıldığında ekran parlaklığı aşağıdaki gibi ayarlanır:
- Sayfa itildiğinde, parlaklık %70'e ayarlanır.
- Sayfadan ayrıldığında, parlaklık varsayılan değerine sıfırlanır.

## Kullanılan Teknolojiler
- Flutter
- QR kodları oluşturmak için qr_flutter paketi
- Ekran parlaklığını kontrol etmek için screen_brightness paketi

## Nasıl Kullanılır
1. Depoyu yerel makinenize klonlayın.
2. Flutter'ın makinenizde yüklü ve yapılandırılmış olduğundan emin olun.
3. Projeyi tercih ettiğiniz kod düzenleyicide açın.
4. Bağımlılıkları yüklemek için `flutter pub get` komutunu çalıştırın.
5. Uygulamayı `flutter run` komutunu kullanarak çalıştırın.

## Ekran Görüntüleri
 


 
 