# Changelog

All notable changes to the master CV and career record are documented here.

## 2026-07-30

- Initialised the CV repository (`README.md`, `cv.md`, `versions/`, `cover-letters/`).
- Migrated existing CV content into `cv.md` as the canonical master document.
- Added a Pandoc + Tectonic PDF pipeline with a custom LaTeX template (colored headings, full-width rules, no italics) and a `Makefile`.
- Rewrote `cv.md`'s narrative: reworded/reordered achievement bullets, added real scope numbers (5+ teams, doubled productivity), consolidated the old Core Expertise / Technical Skills / Leadership sections into one grouped Skills section, added a dedicated Technical Leadership section, and dropped the redundant Selected Projects section.
- Added `versions/engineering-manager.md`, framed honestly around delivery and planning ownership rather than unearned people-management claims.
- Added `versions/concise.md`, a one-page trim of `cv.md`.
- Standardized margins (`0.5in`) across variants so no PDF leaves a near-empty trailing page.
- Added a pre-commit hook (`hooks/pre-commit`) that rebuilds and stages PDFs whenever `cv.md` or a `versions/*.md` file changes, keeping committed PDFs in sync with their markdown source.
- Made `cover-letters/` gitignored (except its README) since letters are personal and written fresh per application; wrote a first letter for a SentinelOne application.
