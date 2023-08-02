---
title: "Next on the Docket"
---

This site is currently at a stage where it's rapidly being worked on. While I eventually aim for this to be a resource that sits there, and is only updated in small chunks when I have new thoughts and curiosities, there are things that need to be added right now, particularly in the [[colophon]], as well as some other meta-pages that will comprise the bones of this space.

With that out of the way, I want to work on:

- [ ] Adding a jekyll plugin for page redirection, likely [this one](https://github.com/jekyll/jekyll-redirect-from)[^1]
- [ ] Finishing the colophon section
    - [ ] Create a master site-design page[^2]
        - [ ] Fold the napkin page into the site design page and add a redirect
        - [ ] Redirect whatever else would have gone in separate files in the site-design folder
        - [ ] Look at and create some HTML components I can use to add more variety into the posts (for example, these [simple HTML/CSS notice boxes](https://bt.ht/notice/))
    - [ ] Fold the pages in site-metadata into one bigger page, with the appropriate redirects in place[^2]
        - [ ] Modify the sidebar to just link to the metadata page
    - [ ] Creating documentation for the site, on the site [^3]
        - [ ] A master page about the stack
        - [ ] A more in-depth page about jekyll
        - [ ] A step-by-step for creating a new note
        - [ ] A sitemap describing what directories house what
        - [ ] A list of rules for site organization (potentially implement a folder depth limit to encourage consolidation)
        - [ ] Maybe a page with kramdown resources and all of what's possible to do in this markdown envionment
- [ ] Create a "snippets" section for entries on various neologisms
- [ ] Create a "stacks" section with my preferred setups for computer, note-taking, sites, etc.

---

[^1]: I need to make sure this doesn't break bidirectional linking or link previewing. If it does, I think I'll still do the bigger pages anyways and then just try to link to header IDs, though it will be more effort for future linking.
[^2]: When making these bigger pages, make sure they have a table of contents.
[^3]: Part of a broader goal I want to look at where every site I have up (and I mean all of them) have documentation, and more importantly are self-documented. An ordinary reader should be able to find a link somewhere on the site that takes them to a page that gives them every single piece of information required to get that site built from my source code.
