---
title: "Metadata: Last Updated Date"
permalink: /last-updated
note-status: brewed
id: last-updated
---

This field simply shows when the file was last updated. Post over!

In all seriousness, there is slightly more to it than that. The last updated date in the sidebar utilizes the [jekyll-last-modified-at](https://github.com/gjtorikian/jekyll-last-modified-at) plugin to automatically find this information. It checks the last time that the file was committed to Git (if that doesn't exist, it instead looks at the file's [`mtime` (modified timestamp)](https://www.geeksforgeeks.org/file-timestamps-mtime-ctime-and-atime-in-linux/), but this shouldn't happen in deployment since anything published will be committed to Git first). Therefore, the date is technically when I last committed the file to Git rather than when I last actually modified text. While that's typically the same day, there are times I forget to commit my changes.
