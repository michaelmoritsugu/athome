FILE(REMOVE_RECURSE
  "../msg_gen"
  "../src/feature_extraction/msg"
  "../msg_gen"
  "CMakeFiles/ROSBUILD_genmsg_cpp"
  "../msg_gen/cpp/include/feature_extraction/CvSURFPoint.h"
  "../msg_gen/cpp/include/feature_extraction/ObjectFeatureMsg.h"
  "../msg_gen/cpp/include/feature_extraction/CvPoint2D32f.h"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_cpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
