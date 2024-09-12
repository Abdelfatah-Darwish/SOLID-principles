// MessagingService Interface
abstract class MessagingService {
  void sendMessage(String message);
}

// Email Service
//low-level module
class EmailService implements MessagingService {
  @override
  void sendMessage(String message) {
    print("Sending email: $message");
  }
}

// SMS Service
//low-level module
class SmsService implements MessagingService {
  @override
  void sendMessage(String message) {
    print("Sending SMS: $message");
  }
}

// High-level module
//Here high-level module  depend on low-level module
class User {
  final EmailService _emailService = EmailService();

  void sendMessage(String message) {
    _emailService.sendMessage(message);
  }
}

void main() {
  User user = User();
  user.sendMessage("Hello via Email");
}


// High-level Module:
// User class:
// The User class is the high-level module because it represents the core logic and user-related functionality. It depends on a concrete implementation of the MessagingService, specifically the EmailService in this case.


// Low-level Modules:
// EmailService and SmsService:
// These classes are low-level modules because they handle specific details of sending messages via email or SMS. They are the concrete implementations of the MessagingService interface.