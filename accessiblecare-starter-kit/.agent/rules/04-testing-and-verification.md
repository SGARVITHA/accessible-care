# Testing and verification (always apply)

- Write tests from the story's acceptance criteria before or with the implementation.
- Required layers by story type: unit; API contract; row-level-security matrix (role x table x action); transition tests; concurrency tests for booking and approval; Playwright with three role sessions on one visit; axe accessibility checks for UI.
- Passing tests is not proof. For any user-facing change, drive the running app in a real browser as each affected role on the same visit, and compare what each role sees against backend truth.
- Never mark a story done without the human verification checklist produced by the implement-story workflow.
- Report honestly: what was verified, what was not, known limitations, deferred items. Never claim a check was run if it was not.
- Do not weaken or delete a test to make a build pass. If a test is wrong, explain why and ask.
