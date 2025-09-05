# Flutter MVVM + Clean Architecture

Kurumsal ve büyük ölçekli projeler için MVVM ve Clean Architecture prensiplerini birleştiren, modüler, test edilebilir ve sürdürülebilir bir yapı.

## Katmanlar

### 1. Presentation
- UI, Bloc, UI Model, Mapper
- Durum yönetimi: bloc/flutter_bloc

### 2. Domain
- Entity, Repository Interface, Usecase
- İş mantığı ve kuralları

### 3. Data
- DTO, Datasource, Repository Implementation
- API ve local veri kaynakları

## Kullanılan Kütüphaneler
- **bloc, flutter_bloc:** Durum yönetimi
- **injectable, get_it:** Bağımlılık enjeksiyonu
- **dio:** API iletişimi
- **freezed:** Immutable model tanımları
- **auto_mappr:** Model dönüşümleri
- **dartz:** Either ile hata yönetimi

## Repository & Usecase Base Sınıfları
```dart
abstract class BaseRepository {}

abstract class BaseUseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}
```

## Hata Yönetimi
- Tüm hatalar `Failure` ile temsil edilir.
- Dio interceptor ile global hata yönetimi.
- dartz ile fonksiyonel hata yönetimi.

## Bağımlılık Enjeksiyonu
- get_it ve injectable ile modüler DI.

## Feature Modülleri
Her özellik (ör. Auth, Todo) kendi Clean Architecture katmanlarına ve bağımsız DI yapılarına sahiptir.

## Model Dönüşümü
- auto_mappr ile DTO, Entity ve UI Model arasında dönüşüm.

## Örnek Kodlar
- DTO, Entity, Usecase, Repository, Bloc örnekleri için ilgili klasörlere bakınız.

## Github Referansları
- [ResoCoder/flutter-tdd-clean-architecture-course](https://github.com/ResoCoder/flutter-tdd-clean-architecture-course)
- [felangel/bloc](https://github.com/felangel/bloc)
- [Flutterando/Clean-Architecture-Flutter](https://github.com/Flutterando/Clean-Architecture-Flutter)
- [Flutter-Community/awesome-flutter](https://github.com/Solido/awesome-flutter#architecture)

## Katmanlar Arası İletişim
- Presentation → Usecase → Repository → Datasource
- Mapper ile veri dönüşümü

---
Daha fazla örnek ve açıklama için ilgili feature klasörlerine ve kodlara bakınız.
