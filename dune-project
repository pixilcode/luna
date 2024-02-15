(lang dune 3.13)

(name luna_cli)

(generate_opam_files true)

(source
 (github pixilcode/luna_cli))

(authors "Brendon Bown")

(license MIT)

(package
 (name luna_cli)
 (synopsis "A command line application (built for Unix/Linux) that can shut down your computer at a given time")
 (description "A longer description")
 (depends
  ocaml
  dune
  (cmdliner (= 1.2.0))))
