FILE(REMOVE_RECURSE
  "../msg_gen"
  "../src/feature_extraction/msg"
  "../msg_gen"
  "CMakeFiles/ROSBUILD_genmsg_py"
  "../src/feature_extraction/msg/__init__.py"
  "../src/feature_extraction/msg/_CvSURFPoint.py"
  "../src/feature_extraction/msg/_ObjectFeatureMsg.py"
  "../src/feature_extraction/msg/_CvPoint2D32f.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
