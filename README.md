# Yes No App

Welcome to **Yes No App**, a simple chat application built with Flutter. This is my first Flutter app, designed to simulate a conversation where the responses are powered by the [YesNo API](https://yesno.wtf/#api). The API provides either a "Yes" or "No" answer along with a fun GIF, giving the app a playful, interactive feel.

## Features
- **Chat Simulation**: Converse with a virtual assistant that responds with "Yes" or "No" GIFs based on your queries.
- **Interactive Responses**: Simply type a question and include a `?` at the end for the model to generate a response.
- **State Management**: Implemented using **Provider**, allowing seamless state updates across the app.
- **Clean UI**: Utilizes custom theming through the app's `AppTheme`.

## Tech Stack
- **Flutter**: For building the cross-platform app.
- **Provider**: For state management.
- **YesNo API**: To fetch the GIFs for responses.

## Screenshots
![image](https://github.com/user-attachments/assets/7e0fd9db-7966-4a01-b972-d8f3c5556454)

![image](https://github.com/user-attachments/assets/f482d503-daa7-4d3c-9c44-5d928c46d919)


## How It Works
1. Open the app.
2. Type any question in the chat input box and ensure it ends with a `?`.
3. The app calls the [YesNo API](https://yesno.wtf/#api) to retrieve a GIF and response.
4. Enjoy your chat experience with simple Yes/No answers!

## Code Structure
- `main.dart`: The entry point of the app. It sets up the providers and routes to the main chat screen.
- `chat_provider.dart`: Manages the state of the chat, including API calls and response handling.
- `chat_screen.dart`: The user interface for the chat where messages are displayed.

## Installation
1. Clone the repository:
    ```bash
    git clone https://github.com/your-username/yes_no_app.git
    ```
2. Install dependencies:
    ```bash
    flutter pub get
    ```
3. Run the app:
    ```bash
    flutter run
    ```

## API Reference
- **YesNo API**: [https://yesno.wtf/#api](https://yesno.wtf/#api)
