# Architecture and code (always apply)

- Layers: routes (thin) -> services (business rules) -> repositories (SQL). No business logic in route handlers or React components.
- State changes happen only through service functions that enforce a transition table. Entities: visit, offer, booking, video session, proposal, help request, escalation.
- Coordination status of a visit is derived by one database view. Never add a stored status column that duplicates it.
- One assignment relation: `bookings`. No assigned-interpreter column on visits or needs.
- Double booking is prevented by a database exclusion constraint on interpreter and time range for confirmed bookings, not by application checks alone.
- Every mutating endpoint accepts an idempotency key. Repeating a request has no extra effect.
- Time is stored in UTC and shown in IST.
- Enums use CHECK constraints. Policy, templates and thresholds are configuration (versioned, effective-dated), not code constants.
- Feature flags per hospital: AI, WhatsApp, import. AI off must leave every workflow working.
- Notifications go through the outbox table and worker. Never send SMS inside a request handler.
- Errors return a code, a request ID and a localisable message. Never return stack traces.
- API contract is OpenAPI. The TypeScript client is generated; do not hand-write API types.
- Migrations are SQL files in `db/migrations`, forward-only with a rollback note. Row-level security policies ship in the same migration as the table.
- Keep functions small and named for what they do. Prefer boring, explicit code.
