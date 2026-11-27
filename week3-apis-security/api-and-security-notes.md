# Week 3: REST APIs, JSON & File Security

## 1. REST API Hands-On (Tested via Hoppscotch)
* **GET Request:** `https://jsonplaceholder.typicode.com/users/1` → Returned `200 OK` with nested JSON user profile.
* **POST Request:** `https://jsonplaceholder.typicode.com/users` → Sent mock new-hire JSON payload (`application/json`) → Returned `201 Created`.

## 2. Key HTTP Status Codes for Integration Troubleshooting
* `200 OK` / `201 Created` — Successful retrieval or record creation.
* `400 Bad Request` — Payload syntax or data validation error.
* `401 Unauthorized` — Invalid credentials or expired token.
* `403 Forbidden` — Valid login, but missing security group (ISSG) permissions.
* `500 Internal Server Error` — Receiving server failure.

## 3. File-Based Integration Security (SFTP + PGP)
* **SFTP (SSH Key Auth):** Secures the delivery channel between Workday and the vendor server.
* **PGP Encryption:** Secures the file payload at rest. Outbound files are encrypted with the **Vendor's Public Key**; inbound files are encrypted with **Workday's Public Key**.
