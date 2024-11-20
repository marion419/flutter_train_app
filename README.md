# 🚃 기차 예매 애플리케이션

``Flutter`` 기반 기차 표 예매 서비스를 지원하는 애플리케이션입니다.  


## 🗂️ 프로젝트 구성

> 📦lib  
 ┣ 📂pages  
 ┃ ┣ 📂home  
 ┃ ┃ ┣ 📂Widgets  
 ┃ ┃ ┃ ┣ 📜select_arrive.dart  
 ┃ ┃ ┃ ┗ 📜select_depart.dart  
 ┃ ┃ ┗ 📕home_page.dart          _**홈 페이지**_  
 ┃ ┣ 📂payment  
 ┃ ┃ ┗ 📗payment_page.dart       _**결제 페이지**_  
 ┃ ┣ 📂seat  
 ┃ ┃ ┣ 📂Widgets  
 ┃ ┃ ┃ ┣ 📜column_name.dart  
 ┃ ┃ ┃ ┣ 📜seats_button.dart  
 ┃ ┃ ┃ ┗ 📜seats_row.dart  
 ┃ ┃ ┗ 📘seat_page.dart          _**좌석 선택 페이지**_  
 ┃ ┗ 📂station_list  
 ┃ ┃ ┗ 📙station_list_page.dart  _**역 선택 페이지**_  
 ┣ 📋main.dart  
 ┗ 📋theme.dart  

## 💡 앱 사용법

![train_app_service](https://github.com/user-attachments/assets/99ea1ddd-22a6-4343-a465-054a636b1e43)

- 출발역과 도착역을 선택하세요.
- 원하는 좌석을 선택한 뒤 확인 버튼을 누르세요.
- 선택한 좌석과 결제 가격이 표시됩니다. 티켓 가격은 역 간의 거리에 따라 달라집니다.
- '결제하기' 버튼을 눌러 결제를 마무리하면 메인 화면으로 돌아갑니다.
- 시스템 환경 설정에 따라 라이트 테마/다크 테마가 자동 적용됩니다.

