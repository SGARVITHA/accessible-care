# Workflow: implement-story

Input: a story ID from `docs/BACKLOG.md` (for example E2-4).

1. Read the story, its acceptance criteria, dependencies, and the PRD sections it implements. Read all rules in `.agent/rules/`.
2. List unknowns and ask the human clarifying questions. Do not guess on auth, RLS, consent, eligibility or wording.
3. Produce a plan: files to create or change, migrations, endpoints, tests, risks, and what you will not do. STOP and wait for approval.
4. Create branch `story/<ID>`. Implement the smallest change that meets the acceptance criteria.
5. Write the tests listed in rule 04. Run lint, typecheck, unit, integration and the relevant e2e tests. Fix failures properly.
6. Self-review against rules 00 to 04. List any rule you could not satisfy.
7. If the story touches authorisation or data access, run the rls-review workflow.
8. Prepare the handoff: summary of changes, files, migrations, tests run with results, and a human verification checklist naming each role to sign in as and the exact steps and expected results.
9. STOP. Do not merge. The human reviews the diff and performs the browser verification.
