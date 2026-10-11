# Sprint 1 task prompts

Goal: repository, tooling, CI, environments, migration framework, tenancy and user tables, design tokens, and the auth spike decision. Backlog references: E1-1 to E1-4, E2-1 to E2-3, E3-1, E5-1. Human tasks run in parallel.

## First-run prompt (paste once in Antigravity after opening the repo)

Read AGENTS.md, every file in .agent/rules, DESIGN.md, docs/stack-decisions.md, docs/PRD.md and docs/BACKLOG.md. Confirm back to me in a short list: the product in one sentence, the five rules you must never break, the things you must ask me before doing, and the Sprint 1 tasks in tasks/sprint-1.md. Do not write any code yet. Ask me any questions you have using the implement-story workflow's step 2 style.

## Agent tasks (run one at a time with the implement-story workflow)

### S1-1 Monorepo scaffold (E1-1)
Create the layout in AGENTS.md: apps/web (React, TypeScript, Vite), apps/api (FastAPI on Python 3.12), packages/ui, db/migrations, e2e, with pnpm workspaces and uv. Add a README that gets a new developer running locally in under 30 minutes. No features yet. Acceptance: clean install and dev servers start for web and api; health route on the api returns ok; README tested from scratch.
Ask me before adding any dependency; list proposed ones with reasons in your plan.

### S1-2 Tooling and CI (E1-2, E1-3)
Add lint, format, typecheck and pre-commit hooks for both stacks, commit conventions, and a GitHub Actions workflow running lint, typecheck, unit tests, build, dependency scanning and secret scanning. Acceptance: a failing lint, type error, vulnerable dependency or committed fake secret blocks the pull request.

### S1-3 Environment configuration (E1-4)
Typed configuration loaded from environment for both apps, validated at startup, using the names in .env.example. Acceptance: the app refuses to start with a missing or malformed variable and prints which one without printing values; no secrets in the repo or logs.

### S1-4 Migration framework and tenancy tables (E2-1, E2-2, E2-3)
Choose the migration runner per docs/stack-decisions.md after the S-A and S-B spikes (if undecided, use plain SQL files with a minimal runner). Use the write-migration workflow. Create hospitals, departments (risk_category, default_duration), clinics, users and roles (patient, front_desk, clinic_staff, interpreter, admin, platform), and hospital membership, with CHECK enums, hospital_id on tenant tables, indexes, and row-level security enabled with default deny. Full policies and the matrix test come in Sprint 2 and 3, so write a failing-closed policy for each table now. Acceptance: migrations apply to an empty database; no table is readable without a policy; a test proves default deny. Stop for human review of every policy.

### S1-5 Design tokens (E5-1)
Turn DESIGN.md into CSS variables and a Tailwind theme in packages/ui for light and dark. Build a token showcase page in the web app with a contrast test in CI that fails on any text and background pair below WCAG AA. Acceptance: tokens are the only source of colour; showcase renders in both themes.

### S1-6 Auth spike (E3-1)
Research and prototype in a folder named spikes/ (excluded from builds and deploys): managed phone OTP versus our own OTP service over the SMS gateway, against the criteria in docs/stack-decisions.md (DLT support, cost, row-level-security fit, effort). Output a one-page decision memo in docs/decisions/auth.md with a recommendation and what we lose with each option. Do not write production auth code. Stop for the human decision.

## Human tasks this sprint

- P0-1: Start DLT registration and choose the SMS gateway (submit the templates in the PRD Appendix A).
- P0-7: Verify database region and hosting (spikes S-A, S-B, S-C), then record the decision.
- Design: run Stitch Batch 1 and review with the checklist; show patient screens to Deaf users.
- Assign roles in the team and set up Antigravity permissions (assisted mode, restricted terminal commands, dev only).
- Calibration: record actual hours per story. After Sprint 2, re-plan using the measured velocity.

## Sprint 1 exit check

CI green on main; local setup works from the README; migrations and default-deny proven; tokens documented; auth memo written; DLT submitted; Stitch Batch 1 reviewed; implementation report filled from tasks/implementation-report-template.md.
