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
//Here high-level modules not depend on low-level modules. both depend on abstractions.
class User {
  User(this._messagingService);
  final MessagingService _messagingService;

  void sendMessage(String message) {
    _messagingService.sendMessage(message);
  }
}

void main() {
  // Create an instance of User with EmailService
  User userWithEmail = User(EmailService());
  userWithEmail.sendMessage("Hello via Email");

  // Create an instance of User with SmsService
  User userWithSms = User(SmsService());
  userWithSms.sendMessage("Hello via SMS");
}




// High-level Module:
// User class:
// The User class is the high-level module because it represents the core logic and user-related functionality. It depends on a concrete implementation of the MessagingService, specifically the EmailService in this case.


// Low-level Modules:
// EmailService and SmsService:
// These classes are low-level modules because they handle specific details of sending messages via email or SMS. They are the concrete implementations of the MessagingService interface.