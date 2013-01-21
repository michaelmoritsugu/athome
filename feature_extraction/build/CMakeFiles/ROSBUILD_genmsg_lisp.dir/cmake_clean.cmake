FILE(REMOVE_RECURSE
  "../msg_gen"
  "../src/feature_extraction/msg"
  "../msg_gen"
  "CMakeFiles/ROSBUILD_genmsg_lisp"
  "../msg_gen/lisp/CvSURFPoint.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_CvSURFPoint.lisp"
  "../msg_gen/lisp/ObjectFeatureMsg.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_ObjectFeatureMsg.lisp"
  "../msg_gen/lisp/CvPoint2D32f.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_CvPoint2D32f.lisp"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_lisp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
