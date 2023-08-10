file(REMOVE_RECURSE
  "KiwiNotes/Block.qml"
  "KiwiNotes/Document.qml"
  "KiwiNotes/Main.qml"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/appKiwiNotes_tooling.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
