# Log Archive Tool

A basic Dockerfile sample

## Getting Started

Follow these steps to set up and run the script:

### Prerequisites

- Docker

### Installation

1. Clone the repository or download the script:

   ```bash
   git clone https://github.com/UMMAN2005/roadmap.sh-devops-projects
   cd roadmap.sh-devops-projects/basic-dockerfile
   ```

### Usage

1. Navigate to the root directory where the `Dockerfile` is located.

2. Build the image:

   ```bash
   docker build -t greeting-app .
   ```

3. Run the docker image (default greeting):

   ```bash
   docker run --rm greeting-app
   ```

4. Run the docker image (custom greeting):

   ```bash
   docker run --rm -e NAME=Jane greeting-app
   ```

## Details

For more information about the script and its features, visit the [project page](https://roadmap.sh/projects/basic-dockerfile).
