# Flutter User Provider

## 프로젝트 소개 👨‍💻

이 Flutter 애플리케이션은 **Provider** 패키지를 사용하여 사용자 정보를 관리하고 상태를 공유하는 기능을 갖음, 사용자는 이름과 나이를 입력하여 정보를 수정하고, 다른 페이지에서 해당 정보를 확인. 이 프로젝트를 통해 상태 관리를 학습하고, 다중 화면 간 상태를 공유하는 방법을 실습

## 주요 기능 ✨

1. **사용자 정보 관리**: 사용자의 이름과 나이를 입력 및 수정
2. **Provider를 통한 상태 관리**: 여러 페이지 간에 상태를 공유하여 사용자 정보를 유지
3. **사용자 정보 확인**: 사용자가 입력한 정보를 다른 페이지에서 확인


## 주요 파일 구조 🗂️

- **`main.dart`**: 애플리케이션의 진입점이며, `ChangeNotifierProvider`를 통해 전역 상태 관리 기능을 제공
- **`home_page.dart`**: 사용자 정보를 입력하고 다른 페이지로 이동할 수 있는 메인 화면을 구성
- **`edit_user_page.dart`**: 사용자의 이름과 나이를 수정하는 페이지
- **`other_page.dart`** 및 **`additional_page.dart`**: 다른 페이지에서 사용자 정보를 확인
- **`user_provider.dart`**: 사용자 정보의 상태 관리를 담당하는 Provider 클래스
- **`user_model.dart`**: 사용자 정보를 저장하는 모델 클래스

## 사용된 패키지 📦

- [provider](https://pub.dev/packages/provider): Firebase 초기화를 위한 필수 패키지.
