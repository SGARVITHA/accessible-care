# Workflow: rls-review

1. List every table, view, function and storage bucket touched by the change.
2. For each, tabulate the policy per role: patient, front desk, clinic staff, interpreter, admin, platform. Compare to the access matrix in PRD section 10.
3. Run the RLS matrix tests. Add cases for every new table.
4. Attempt cross-tenant reads and writes for each role. All must fail.
5. Check views and functions for privilege leaks (security definer, missing filters). Check that columns hidden from a role are not exposed through views or joins.
6. Check logs and error messages for personal data.
7. Output a table of findings (OK or gap), and the exact fix for each gap. STOP for human sign-off.
