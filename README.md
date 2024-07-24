SafeNet Academy
===============

Example phishing site for credential harvesting for password analysis.

Intended for use in a cyber security class. Students are asked to register at class start for an interactive activity.

<img src="https://github.com/user-attachments/assets/249b101c-496d-447e-8857-f60ab62eb252" alt="registration page" width="790" height="738">

Routes
------

- `/` - register with a name, email and password. Passwords are collected in paintext.
- `/credentials` - show password weaknesses and time to crack, revealing the first 2 password characters.

Key Lessons
-----------

- Do not use the same password across multiple sites.
- Use a password manager to fill, generate and save random, unique passwords for every site.
- Use a long, memorized passphrase for your email and other important accounts, and use 2-Step Verification.
- If someone compromises your email account, they can reset passwords to most other sites to gain access.
