# ADR-001: Stack decisions

Status: proposed, pending Sprint 1 spikes. Date: 11 October 2026.

## Decisions

| Layer | Choice | Reason |
|---|---|---|
| Frontend | React, TypeScript, Vite, Tailwind CSS, Radix UI primitives, TanStack Query, React Hook Form with Zod, react-i18next, vite-plugin-pwa | Radix gives accessible primitives; Tailwind matches Stitch exports; typed forms and server state |
| Backend | FastAPI, Python 3.12, Pydantic v2, SQLAlchemy Core, OpenAPI-generated TypeScript client | One typed contract across both sides |
| Database | Postgres (Supabase managed) with SQL migrations, row-level security, exclusion constraints | Matches PRD; exclusion constraint prevents double booking |
| Auth | Phone OTP; option chosen in Sprint 1 spike | DLT-compliant SMS is the deciding constraint |
| Hosting | API on Google Cloud Run (Mumbai); static frontend on Firebase Hosting | India region; same cloud as Vertex AI; static assets contain no patient data |
| Timers and outbox | Postgres outbox plus Cloud Scheduler triggering a Cloud Run job each minute | No message broker; one-minute granularity is enough for the PRD timers |
| SMS | DLT-capable Indian gateway behind an adapter | Swap by configuration; mock adapter for dev |
| AI | Gemini on Vertex AI via the Google GenAI SDK; schema-validated outputs; feature flag per hospital | Pseudonymous inputs; India region where covered |
| Observability | Cloud Logging, Error Reporting, uptime checks | Stays in-region; one vendor |
| CI/CD | GitHub Actions to Cloud Run, with dependency, secret and static-code scanning | Per backlog E1-3 |
| Tooling | pnpm, uv, ruff, pyright, eslint, Vitest, pytest, Playwright, axe | Standard; agent-friendly |

## Spikes to run in Sprint 1 (each time-boxed; decision memo at the end)

| Spike | Question | Fallback if it fails |
|---|---|---|
| S-A Auth | Does Supabase phone auth support a custom SMS hook that works with a DLT gateway, in an India region? | Own OTP service on the SMS gateway minting sessions the API and database verify; or Cloud SQL for Postgres with the same RLS design |
| S-B Region | Does the chosen Postgres host offer an India region with point-in-time recovery? | Cloud SQL Postgres in Mumbai |
| S-C AI region | Does the Gemini model we want run with India-region processing on Vertex AI? | Different Gemini model that is covered; or keep AI off for the pilot |
| S-D Stitch | Do Stitch Tailwind exports meet contrast, focus and label requirements? | Use exports as visual reference only and rebuild from DESIGN.md |
| S-E SMS | Which gateway approves our templates fastest, including Tamil and Hindi? | Second gateway on the shortlist |

## Consequences

- Migrations: Supabase CLI if Supabase is chosen, otherwise dbmate. Decide at the end of S-A and S-B.
- If we leave Supabase, row-level security and policies stay; only the auth integration changes.
- Re-open this record when any spike fails.
