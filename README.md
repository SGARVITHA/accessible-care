# AccessibleCare Starter Kit

Everything needed to start building with Stitch (design) and Antigravity (agent-assisted development).
Companion documents (export from Claude Docs into `docs/` as PDF or Markdown): PRD v1.0 and the Phase 1-2 Engineering Backlog.

## What is in here

| Path | Purpose |
|---|---|
| `AGENTS.md` | Root instructions every coding agent reads first |
| `.agent/rules/` | Workspace rules for Antigravity: product boundaries, security, architecture, UI and content, testing |
| `.agent/workflows/` | Reusable procedures: implement-story, write-migration, rls-review, phase-gate-check |
| `DESIGN.md` | Design system for Stitch and for the frontend (single source of truth for tokens) |
| `design/stitch-prompts.md` | Prompts for all five roles, in two batches, plus a review checklist |
| `docs/stack-decisions.md` | Stack, spikes with deadlines, fallbacks |
| `docs/status-wording.md` | Canonical status wording (copy into constants) |
| `tasks/sprint-1.md` | Sprint 1 task prompts and the first-run prompt |
| `tasks/implementation-report-template.md` | Report written at every phase lock |
| `.env.example` | Variable names only; never commit real values |

## Order of work

1. **Day 0 (human):** create the Git repo and copy this kit to its root. Put the PRD and backlog in `docs/PRD.md` and `docs/BACKLOG.md`. Start the Phase 0 items: DLT registration and gateway choice, hosting and database region check.
2. **Days 1-3 (design):** create a Stitch project, import `DESIGN.md`, run Batch 1 prompts from `design/stitch-prompts.md`, review with the checklist, show the patient screens to Deaf users, then run Batch 2. Export accepted screens (zip or MCP) into `design/reference/`.
3. **Sprint 1 (build):** open the repo in Antigravity, confirm the rules loaded, paste the first-run prompt from `tasks/sprint-1.md`, then work the Sprint 1 tasks one at a time.
4. **Every story:** use the `implement-story` workflow. You review the plan before code, the diff after, and verify in a browser with three role accounts.

## Verify before relying on this kit

- Antigravity folder names for rules, workflows and skills (`.agent/rules`, `.agent/workflows`) follow the documented workspace-rules path for the version current when this was written. Antigravity has had a 2.0 release; confirm paths and slash-command behaviour in its current documentation, and move files if they differ.
- Stitch DESIGN.md import: confirm the current import flow and that generated screens respect the tokens. If Stitch ignores a token, fix the prompt, not the design system.
- Check current Antigravity quotas, pricing and general-availability status. It was in public preview with an evolving security posture as of April 2026.
- Nothing here has been run against your repo yet. Treat the first week as calibration.

## Safety defaults for agents

Agents get access to dev and staging only. No production credentials. No real patient data anywhere outside production, ever. Autopilot mode off: use the assisted mode so the agent asks before risky steps. Restrict allowed terminal commands.
