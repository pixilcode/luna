(lang dune 3.13)

(name luna)

(generate_opam_files true)

(source
 (github pixilcode/luna-cli))

(authors "Brendon Bown")

(license MIT)

(package
 (name luna)
 (synopsis "A command line application (built for Unix/Linux) that can shut down your computer at a given time")
 (description "A longer description")
 (depends
  ocaml
  dune
  cmdliner))
