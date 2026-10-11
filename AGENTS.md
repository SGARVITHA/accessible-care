# AGENTS.md - AccessibleCare

You are working on a production health-adjacent product. Read this file and everything in `.agent/rules/` before any task.

## What the product is

A communication-access layer for Deaf and hard-of-hearing hospital patients: it makes the communication need visible to staff, books qualified interpreters or video interpreting, guarantees a fallback, and records what happened. Full spec: `docs/PRD.md`. Work items: `docs/BACKLOG.md`.

## Golden rules

1. The backend is the source of truth. The LLM never invents candidates, assignments or policy. A human approves every consequential action.
2. Never build: AI sign translation, clinical decisions, emergency automation, chat, speech-to-text, payments, recording of video sessions, surveillance.
3. No real patient data in any non-production environment. Synthetic data only.
4. Deny by default. Row-level security on every table. `hospital_id` on every tenant table.
5. Statuses are derived, never stored independently. One assignment relation: bookings.
6. Everything must work with AI switched off.
7. Tests passing is not proof. Verify user-facing behaviour in a running browser.

## Repository layout (target)

```
apps/web        React + TypeScript + Vite
apps/api        FastAPI (Python 3.12)
packages/ui     shared components and tokens
db/migrations   SQL migrations (source of truth for schema)
e2e             Playwright tests
design/         Stitch prompts and accepted references
docs/           PRD, backlog, decisions
tasks/          sprint prompts and report template
```

## Commands (fill in as the scaffold lands; keep this section accurate)

- install: `pnpm install` and `uv sync`
- web dev: `pnpm --filter web dev`
- api dev: `uv run fastapi dev apps/api/main.py`
- lint and typecheck: `pnpm lint && pnpm typecheck` and `uv run ruff check . && uv run pyright`
- tests: `pnpm test` and `uv run pytest`
- e2e: `pnpm e2e`
- migrations: `uv run python -m db.migrate up`

## How to work

Use `.agent/workflows/implement-story.md` for every story. Plan first and stop for approval. Work on a branch named `story/<ID>`. Keep changes small and scoped to the story.

## Stop and ask a human before

- Writing or changing authentication, session, row-level security, audit, consent or eligibility logic.
- Adding any dependency.
- Writing a migration that drops or rewrites data.
- Changing status wording, policy defaults, SMS templates or consent text.
- Anything touching secrets, deployment or production.

## Definition of done

Acceptance criteria met; unit and integration tests; RLS and role checks reviewed; typecheck and build pass; browser verification with real role accounts on the same visit; error, loading and empty states exercised; no secrets exposed; no placeholder copy; implementation report entry written with honest limitations.

## Design references
Stitch screens in design/reference/ show visual direction only. Copy, status wording and behaviour in design/review-notes.md and docs/status-wording.md override anything shown in a screen. Read both before any UI story.
