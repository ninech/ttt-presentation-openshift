# Tech Talk Thursday - Openshift

This presentation uses [Reveal.js](https://github.com/hakimel/reveal.js).

## Setup

As we are talking about Docker this presentation itself is served from a Docker container.

1. Install Docker

1. Navigate to the presentation's folder

1. Build the Docker image
   ```sh
   $ docker build -t presentation .
   ```

1. Serve the presentation and monitor source files for changes
   ```sh
   $ docker run --rm -ti -p 8000:8000 -v $(pwd):/app --name presentation presentation
   ```
   The first run takes some time because it installs the javascript dependencies.

1. Open <http://localhost:8000> to view your presentation

1. Stop the presentation
  ```sh
  $ docker kill presentation
  ```

## Folder Structure
- **css/** Core styles without which the project does not function
- **js/** Like above but for JavaScript
- **plugin/** Components that have been developed as extensions to reveal.js
- **lib/** All other third party assets (JavaScript, CSS, fonts)
