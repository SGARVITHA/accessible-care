# Workflow: phase-gate-check

1. Load the phase exit gate from `docs/BACKLOG.md`.
2. Run the full test suite: unit, integration, RLS matrix, transitions, concurrency, e2e, accessibility, dependency and secret scans.
3. For each gate item, mark Met, Not met, or Not verified, with evidence (test names, commands, outputs). Never mark Met without evidence.
4. List deviations from the PRD, deferred stories, and new hazards. Update the hazard log draft.
5. Fill `tasks/implementation-report-template.md`.
6. Propose a tag name. STOP. A human reviews, does the cross-role browser verification, and creates the tag.
