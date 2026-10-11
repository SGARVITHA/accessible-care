# Workflow: write-migration

1. Name the file `NNNN_short_description.sql` in `db/migrations`, next number in sequence.
2. Include: table or change, primary and foreign keys, `hospital_id` on tenant tables, CHECK constraints for enums, indexes for every foreign key and every filter used by the story.
3. In the same file: enable row-level security and add explicit policies per role. Default deny.
4. Add comments describing the rollback steps. No destructive change (drop, rewrite) without human approval.
5. Apply to an empty database and to the previous schema in tests. Run the RLS matrix tests.
6. Report: tables touched, policies added, constraints added, indexes added, rollback note.
