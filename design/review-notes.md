# Design review notes: patient screens (Stitch batch 1)

Status: visual direction approved for the patient screens. The copy and behaviour below override what Stitch generated. Agents must follow these when implementing.

## Global
- One NotForEmergencies component: same icon, label "Not for emergencies", text "If you need urgent help, go to the Emergency desk at {hospital} or ask someone near you to help." Never "Safety Notice", never a phone number.
- Headers use short titles that never truncate (Home, Your visit, Your needs, Privacy, Feedback).
- ISL video slots: neutral placeholder (play icon, caption "ISL video guide", duration). No photographs or generated people until real clips exist.
- No invented logistics or promises: no arrival times, no who will meet the patient, no who will call or contact, no claim that records are saved or used by anyone. Use only the canonical status wording and configured hospital text.
- Never say "call your name". Deaf patients cannot hear it. Say "Wait near the counter."
- No marketing claims such as "Secure Record" or "Recommended".

## Per screen
- Sign-in: six-digit code, not four. Phone entry and code entry are two separate steps.
- Same-day request: confirmation says the front desk has been told and to wait near the counter. No "call your name or wave". No SMS-confirmation line until a template exists.
- Feedback thank-you: "Thank you. Your answers help the hospital improve interpreting." Remove "saved to your care record", remove "interpreters will use this", remove the visit history link.
- Profile wizard: remove interpreter names from copy ("If an in-person interpreter is not free, a video interpreter can join on a tablet."). Remove "Recommended". Short step titles.
- Consent: every toggle starts OFF on first visit; core consents need an explicit accept. AI toggle text: "Let the hospital use AI to help write messages to you. Staff check every message before it is sent." Never mention visit notes or anything clinical. Remove the "Secure Record" chip.
- Visit details: "What to expect" uses only configured hospital text. Default steps: 1 Check in at the front desk. 2 Show this screen to staff. 3 Your visit. Remove the arrive-by time and "will meet you". Button label "Ask the hospital for a call-back" (not "coordinator"). Remove the reference code unless it is the appointment reference.
- Home: locked version only.
