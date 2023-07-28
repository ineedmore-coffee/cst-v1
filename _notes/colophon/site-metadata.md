---
title: "Site Metadata"
permalink: /site-metadata
note-status: brewed
id: site-metadata
---

The notes on this site have a couple pieces of metadata associated with them. These fields, if they exist, are shown in the right sidebar (on desktop) or below the note (mobile), and defined in the front-matter of the note.

At the moment, these metadata points are:
* The [[note-status|note's status]]
* When the note was [[last-updated|last updated]] (based on data from Git)
* The note's [[epistemic status|epistemic-status]]
* My [[epistemic effort|epistemic-effort]] in creating the note

When building the site, they get added to each page via the `notes_sidebar` include. Each [[note status]]'s individual page also has a list of notes with the same status, generated using the `tagged_note_list` include.

**These metadata points aren't always present on every page.** For example, the page you're reading right now doesn't have an epistemic effort, epistemic status, or note status. This is because these metadata points aren't always relevant, like in the case of this file, where it's describing the site itself rather than something I've thought about or researched.
