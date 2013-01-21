# This message contains the same information as a CvSURFPoint from OpenCV2

#fields for CvSURFPoint

CvPoint2D32f pt

# -1, 0 or +1. sign of the laplacian at the point.
int32 laplacian 

# size of the feature
int32 size 

# orientation of the feature: 0..360 degrees
float32 dir 

# value of the hessian (can be used to
# approximately estimate the feature strengths;
# see also params.hessianThreshold)
float32 hessian 

