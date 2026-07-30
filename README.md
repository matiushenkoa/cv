# Artem Matiushenko

Lead UI Engineer specialising in Frontend Platform Engineering.

## Structure

- [`cv.md`](cv.md) — canonical master CV. Single source of truth; every tailored variant derives from it.
- [`versions/`](versions/) — role-tailored CVs generated from `cv.md` (e.g. staff, principal, engineering-manager).
- [`cover-letters/`](cover-letters/) — reusable cover letter templates per application/company.
- [`CHANGELOG.md`](CHANGELOG.md) — history of changes to the master CV and career record.

## Expertise

- React
- TypeScript
- Frontend Architecture
- Platform Engineering
- Design Systems
- Developer Experience

## Workflow

1. Update `cv.md` whenever a new achievement, role change, or skill is worth recording.
2. Log the change in `CHANGELOG.md`.
3. Regenerate any affected files under `versions/` or `cover-letters/`.

## Generating a PDF

Requires [Pandoc](https://pandoc.org) and [Tectonic](https://tectonic-typesetting.github.io) (`brew install pandoc tectonic`).

```
make pdf
```

Outputs `pdf/Artem_Matiushenko_CV.pdf`.
