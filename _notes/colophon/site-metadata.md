---
title: "Site Metadata"
permalink: /site-metadata
note-status: brewed
id: site-metadata
toc: true
---

The notes on this site have a couple pieces of metadata associated with them. These fields, if defined in the front matter of the note, are shown in the right sidebar (on desktop) or below the note (mobile).

At the moment, these metadata points are:
* The note's status
* When the note was last updated (based on data from Git)
* The note's epistemic status
* My epistemic effort in creating the note

When building the site, they get added to each page via the `notes_sidebar` include. Each [[note status]]'s individual page also has a list of notes with the same status, generated using the `tagged_note_list` include.

**These metadata points aren't always present on every page.** For example, the page you're reading right now doesn't have an epistemic effort or epistemic status. This is because these metadata points aren't always relevant, like in the case of this file, where it's describing the site itself rather than something I've thought about or researched.

## Note Status

Note statuses are my way of designating how finished a note is. This enables [[learn in public|learning in public]], by removing the need for everything to be 100% done before publishing it. Many digital gardens use, well, horticultural terminology, such as the [growth stages on Maggie Appleton's site](https://maggieappleton.com/colophon), but given that this is the "Coffee Shop Table", I've opted for coffee-based terms instead

Most notes will go through the following pipeline:

* They start as [[grounds]], an idea or topic that I want to write about but that I have yet to dive into.
* If it's a note that I'm working on in a short timeframe, it's considered [[warm brewing]]. If it's a note that will be revised over a longer timeframe, it's [[cold brewing]].
    * If a note becomes irrelevant during the brewing process, or there is some other reason that it will definitely never be finished, it becomes [[overextracted]].
* When the note is completed to a reasonable extent (it doesn't need to be never edited again), it's now [[brewed]] and ready for consumption!

## Last Updated Date

The last updated date in the metadata section utilizes the [jekyll-last-modified-at](https://github.com/gjtorikian/jekyll-last-modified-at) plugin to automatically find this information. It checks the last time that the file was committed to Git (if that doesn't exist, it instead looks at the file's [`mtime` (modified timestamp)](https://www.geeksforgeeks.org/file-timestamps-mtime-ctime-and-atime-in-linux/), but this shouldn't happen in deployment since anything published will be committed to Git first). Therefore, the date is technically when I last committed the file to Git rather than when I last actually modified text. While that's typically the same day, there are times I forget to commit my changes.

## Epistemic Status and Effort

[[Epistemic status]] and [[epistemic effort]] are a way for me to indicate how confident I am in the information on a given page, and how much research effort I've put into crafting my thoughts on the matter and the content of the page. These are a great way for me to feel comfortable publishing a wide variety of information and refining it over time, rather than just avoiding publishing information that others may find useful because I feel that I'm not entirely confident. To read more, visit my notes on [[epistemic status]] and [[epistemic effort]].

