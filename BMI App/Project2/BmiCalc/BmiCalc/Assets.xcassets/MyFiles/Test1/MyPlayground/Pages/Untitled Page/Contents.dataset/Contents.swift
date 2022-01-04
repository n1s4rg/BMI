import Foundation

var emails = [String]()

emails.append("daniel.derezende@collegelasalle.com")
emails += ["hello@telus.ca"]

// inserting at a position
emails.insert("john@gmail.com", at: 0)

emails.insert("vicky@gmail.com", at: 3)

print(emails)

emails.remove(at: 3)
print(emails)

print("emails.count = \(emails.count)")

if emails.isEmpty {
 print("Email array is empty!")
}
if emails.count == 3{
 print("Email array is not empty!")
}

// Looping all elements
for email in emails {
 print(email)
}

if emails.contains("daniel.derezende@collegelasalle.com"){
 print("Email already exists!")
} else {
 emails.append("daniel.derezende@collegelasalle.com")
}

if emails.contains("danish.royal@collegelasalle.com"){
 print("Email already exists!")
} else {
 emails.append("danish.royal@collegelasalle.com")
}

print(emails)
