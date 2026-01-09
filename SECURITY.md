# Security Policy

## Reporting Vulnerabilities

If you discover a security vulnerability in ETDK, please report it responsibly.

**Email:** damachin3@proton.me

**DO NOT** open public issues for security bugs.

## What to Include

When reporting a vulnerability, please include:

- **Description** of the vulnerability
- **Steps to reproduce** the issue
- **Potential impact** (data exposure, key recovery, etc.)
- **Suggested fix** (if you have one)
- **Your contact information** for follow-up

## Response Time

- **Initial response:** Within 48 hours
- **Status update:** Within 7 days
- **Fix timeline:** Depends on severity (critical issues within 24-48 hours)

## Disclosure Policy

- We follow **responsible disclosure**
- Security issues will be fixed before public disclosure
- Reporter will be credited (if desired) in release notes
- CVE will be requested for critical vulnerabilities

## Security Considerations

ETDK is designed for secure data deletion. Key security aspects:

- **Key generation:** OpenSSL RAND_bytes() (cryptographically secure)
- **Key storage:** RAM only, locked with mlock() to prevent swapping
- **Key wiping:** 5-pass secure wipe with volatile pointers
- **Encryption:** AES-256-CBC (NIST standard)
- **Memory safety:** No buffer overflows, input validation
- **Platform security:** Uses platform-specific secure APIs

## Out of Scope

The following are **not** security vulnerabilities:

- Physical access attacks (cold boot, DMA)
- Compromised systems where attacker has root access
- Key recovery after proper 5-pass wipe (computationally infeasible)
- Social engineering (user saving key insecurely)

## Security Updates

Security updates will be released as patch versions:
- Critical: v1.0.1, v1.0.2, etc.
- Security fixes backported to supported versions

Subscribe to GitHub releases for security notifications.

---

Thank you for helping keep ETDK secure!
