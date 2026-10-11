# Security and data (always apply)

## Tenancy and access
- Every tenant table has `hospital_id`. Row-level security is enabled on every table with explicit policies per role. Default deny.
- Authorisation is enforced in the API and the database. Hiding things in the UI is never a control.
- The database service-role key never reaches a browser or a client bundle.
- Interpreters see only logistics for their own offers and bookings: first name, time, place or link, mode, department, communication-style notes. Never reason for visit, staff note, contact details or hospital ID.

## Personal data
- Never log names, phone numbers, UHID, staff notes or free text. Log IDs and request IDs.
- No real patient data outside production. Seed and test data are synthetic. CI rejects realistic identifiers.
- The patient staff-note field is shown to staff only. It is never sent to the AI, to interpreters, or to analytics.
- SMS text never contains disability or health information. Use the registered templates only.

## Authentication and links
- OTP: six digits, five-minute expiry, five attempts then a fifteen-minute lock, rate limits per number and per device. No voice OTP.
- Signed links are unguessable, single-purpose, and expiring. Sensitive views require OTP even with a valid link.
- Secrets come from environment or the secret manager. Never in code, config files in the repo, logs, or error messages.

## AI inputs
- The model receives pseudonymous structured facts only: internal IDs, department, time, mode, constraints. No names, phones, reasons, staff notes, or patient-typed text.
- Output is validated against a schema. The model can only use read and draft tools. The backend executes approved actions and rechecks eligibility, consent and policy at execution.

## Dependencies
- Ask a human before adding a dependency. Pin exact versions. Prefer packages already in the project. Avoid releases published in the last 14 days.
- Do not run install scripts from unknown packages.

## Audit
- Append-only. Events: sign-in, profile reads by staff, profile changes, link and unlink, offers, confirmations, cancellations, policy changes, exports, AI proposals and approvals, role changes.
