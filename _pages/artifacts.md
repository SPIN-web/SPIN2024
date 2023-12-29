---
layout: home
permalink: /artifacts
order: 4
---
# Artifact Evaluation

For the first time, SPIN 2024 introduces an artifact evaluation (AE).
For all accepted SPIN papers, authors are able to submit an artifact to substantiate the claims made in the paper.
Participation in the AE is optional, but strongly encouraged.
The outcome of the voluntary artifact evaluation will not alter the paper acceptance decision, but a positive outcome increases its credibility.


## Artifact
An artifact is any additional material (software, data sets, machine-checkable proofs, etc.) that substantiates claims made in the paper and ideally renders them fully replicable.
For example, an artifact might consist of a tool and its documentation, input files used for tool evaluation in the paper, and configuration files or documents describing parameters used in the experiments.

## Evaluation Criteria
The Artifact Evaluation Committee (AEC) will read the corresponding paper and evaluate the artifact according to the following criteria:

- consistency with and replicability of results presented in the paper
- completeness
- documentation and ease of use
- availability in a permanent online repository.

The evaluation will be based on the [EAPLS guidelines](https://eapls.org/pages/artifact_badges/), and the AEC will decide which of the badges — among Functional, Reusable, and Available — will be assigned to a given artifact.
The corresponding badges can be added to the title page of the paper in case of acceptance.


# Submission guidelines
Artifact submission is handled via EasyChair.
Select the *SPIN 2024 Artifact Evaluation* track and provide the following information:
1. Artifacts should have the same title and authors as the accepted paper.
2. Upload a PDF file of the accepted paper.
3. The abstract should summarize the content of the artifact and its relation to the paper.
   In particular the abstract should:
    - provide an URL (preferably a DOI) to a publicly available zip file containing the artifact and all relevant files.
    - provide a SHA256 checksum of the zip file (to ensure consistency).
      The checksum can be generated with:
        - Linux: `sha256sum <file>`
        - Windows: `CertUtil -hashfile <file> SHA256`
        - MacOS: `shasum -a 256 <file>`
    - (if required) discuss special requirements for running the artifact (specific hardware resources, installation of proprietary software, etc.)
    - clearly state which parts of the paper should be reproducible and how they can be reproduced (for example using specific scripts or following step-by-step instructions given in the artifact README). If part of the results cannot be reproduced, shortly explain why this is the case.

## Artifact guidelines
The artifact should be a self-contained archive that allows the AEC to evaluate the artifact on either the [TACAS-23 virtual machine](https://doi.org/10.5281/zenodo.7113223) (VM) or as a Docker image.
Authors should test their artifact on the VM or Docker prior to the submission and include all relevant instructions.
Instructions should be clear and specify every step required to build and run the artifact, assuming no specific knowledge and including steps that the authors might consider trivial.

In particular, the artifact should contain:
- A file `License.txt` containing the license for the artifact. The license must at least allow the Artifact Evaluation Committee to evaluate the artifact w.r.t. the criteria mentioned above.
- A README file containing:
  - detailed step-by-step instruction for an early light review that allows reviewers to: (1) verify that the artifact can properly run; and (2) perform a short evaluation of the artifact before the full evaluation and detect any difficulties
  - detailed step-by-step instructions for use of the artifact and replication of results in the paper, including the estimated time for running the replication
- all code, binaries, example files, documentation, scripts, etc. required to reproduce the results in the paper.

### VM
We recommend to prepare the artifact based on the [TACAS 2023 Artifact Evaluation Virtual Machine](https://doi.org/10.5281/zenodo.7113223) for [VirtualBox](https://www.virtualbox.org).
The virtual machine is based on an Ubuntu 22.04 LTS image with the following additional packages: `build-essential`, `cmake`, `clang`, `mono-complete`, `openjdk-8-jdk`, `python3.10`, `pip3`, `ruby`, and a 32-bit `libc`.
VirtualBox guest additions are installed on the VM; it is therefore possible to connect a shared folder from the host computer.
If necessary, we allow reasonable network access from the VM.
However, we strongly encourage authors to supply a completely self-contained artifact to ensure long-term availability.
The instructions must include all necessary steps for the installation and setup on the "clean" TACAS-23 VM. In the best case, the authors would set up a script which performs all or almost all steps for the setup of their tool in the VM automatically.
In particular, authors should not rely on instructions provided by external tools.

### Docker
An artifact based on Docker should come with a Dockerfile which automatically sets up the artifact from a base image such as `ubuntu`.
For long-term availability we recommend to support use of the Docker image without internet access, for instance by also providing the Docker images as exported by `docker save`.


## Suggestions for preparing the artifact
In the following, we list some general suggestions for preparing the artifact:
- Keep the replication simple through easy-to-use scripts and detailed instructions.
- When writing step-by-step instructions, assume minimum expertise of users.
- Document in detail how to replicate most, or ideally all, of the experimental results of the paper using the artifact.
- State resource requirements and/or the environment in which you successfully tested the artifact.
- For experiments requiring a large amount of resources, we strongly recommend providing a way to replicate a representative subset of results such that results can be reproduced on various hardware platforms in reasonable time. Do include the full set of experiments for those reviewers with sufficient hardware or time.
- Do not submit a virtual machine; only submit your files, which AEC members will copy into the provided virtual machine.
- For the “Available” badge, you must upload your artifact to a permanent repository (e.g. [Zenodo](https://zenodo.org/), [figshare](https://figshare.com/), or [Dryad](https://datadryad.org/)) that provides a Digital Object Identifier (DOI), and use that link in your submission. This excludes other repositories such as an institutional or personal website, source code hosting services, or cloud storage.
- In case the artifact cannot comply with some of the guidelines, please do not hesitate to contact the AE chairs before the AE submission deadline. An example is proprietary software such as Matlab.


## Timeline
(all times are 23:59 AoE)
- **January 26th, 2024**: Artifact submission deadline
- until **February 9th, 2024**: Communication period with authors in case of technical issues with the artifact
- **March 4th, 2024**: Author notification of AE reviews
- **March 11, 2024**: Camera ready version due (including possible AE badges)

## Submission
Artifacts can be submitted through the SPIN 2024 Easychair page: [https://easychair.org/conferences/?conf=spin2024](https://easychair.org/conferences/?conf=spin2024). Choose the "SPIN 2024 - artifact" track.

## Artifact Evaluation Committee

Chairs:
- [Ernst Moritz Hahn](https://emhahn.de/) (University of Twente, Netherlands)
- [Matthias Volk](https://volkm.github.io/) (Eindhoven University of Technology, Netherlands)

Members:
- [Peter Backeman](https://www.es.mdu.se/staff/4393-Peter__Backeman) (Mälardalen University, Sweden)
- [Rong Gu](https://sites.google.com/view/ronggu/home) (Mälardalen University, Sweden)
- [Sudeep Kanav](https://www.sosy-lab.org/people/kanav/) (LMU Munich, Germany)
- [Martin Kristjansen](https://vbn.aau.dk/en/persons/122802) (Aalborg University, Denmark)
- [Stefano Nicoletti](https://stefanonicoletti.com/) (University of Twente, Netherlands)
- [Quentin Nivon](https://scholar.google.com/citations?user=wJcVcNIAAAAJ) (INRIA Grenoble Rhône-Alpes, France)
- [Reza Soltani](https://rezasoltani.me/) (University of Twente, Netherlands)
- [Ahang Zuo](https://dblp.org/pid/306/8744.html) (INRIA Grenoble Rhône-Alpes, France)