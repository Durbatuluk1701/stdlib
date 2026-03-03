(lang dune 3.8)

(name rocq-stdlib)

; We use directory targets in documentation

(using directory-targets 0.1)

(using coq 0.8)

(formatting
 (enabled_for ocaml))

(generate_opam_files true)

(license LGPL-2.1-only)

(maintainers "The Rocq standard library development team")

(authors "The Rocq development team, INRIA, CNRS, and contributors")

; This generates bug-reports and dev-repo

(source
 (github Durbatuluk1701/stdlib))

(homepage https://coq.inria.fr/)

(documentation "https://coq.github.io/doc/")

(version 9.1.1)

(package
 (name rocq-stdlib)
 (depends
  rocq-runtime
  (rocq-core
   (= :version)))
 (synopsis "The Rocq Proof Assistant -- Standard Library")
 (description
  "Rocq is a formal proof management system. It provides\na formal language to write mathematical definitions, executable\nalgorithms and theorems together with an environment for\nsemi-interactive development of machine-checked proofs.\n\nTypical applications include the certification of properties of\nprogramming languages (e.g. the CompCert compiler certification\nproject, or the Bedrock verified low-level programming library), the\nformalization of mathematics (e.g. the full formalization of the\nFeit-Thompson theorem or homotopy type theory) and teaching.\n\nThis package includes the Rocq Standard Library, that is to say, the\nset of modules usually bound to the Stdlib.* namespace."))

(package
 (name coq-stdlib)
 (allow_empty)
 (depends
  coq-core
  (rocq-stdlib
   (= :version)))
 (synopsis
  "Compatibility metapackage for Coq Stdlib library after the Rocq renaming"))
