//: Playground - noun: a place where people can play

import UIKit

// nested types
//allows to put class, enum or struct insside another class enum or struct
// nest a class inside another class if not relevent elsewhere
class Email {
    
    enum EmailStatus : String {
        case Read
        case Unread
        case Sent = "email sent"
        case Recieved
    }
    
    let sender: String
    let recipient: String
    let date: NSDate
    
    var status = EmailStatus.Sent
    
    init(sender: String, recipient: String) {
        self.sender = sender
        self.recipient = recipient
        date = NSDate()
    }
    
    func emailData() -> String {
        return "Sent From: \(sender), Recipient: \(recipient), Time: \(date)"
    }
    
    func EmailState() -> String {
        switch status {
        case .Read:
            return "email read"
        case .Unread:
            return "email not sent"
        case .Sent:
            return status.rawValue
        case .Recieved:
            return "email recieved"
        }
    }
    
    class EmailPriority {
        
    }
    
}

var myEmail = Email(sender:"me", recipient: "you")
myEmail.emailData()
