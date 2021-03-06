"""autogenerated by genpy from feature_extraction/ObjectFeatureMsg.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg
import sensor_msgs.msg
import feature_extraction.msg

class ObjectFeatureMsg(genpy.Message):
  _md5sum = "59ec07cffbe2954664bbdcfb414ab07f"
  _type = "feature_extraction/ObjectFeatureMsg"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """CvSURFPoint[] features
sensor_msgs/Image image

================================================================================
MSG: feature_extraction/CvSURFPoint
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


================================================================================
MSG: feature_extraction/CvPoint2D32f
float32 x
float32 y

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of cameara
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in src/image_encodings.cpp

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.secs: seconds (stamp_secs) since epoch
# * stamp.nsecs: nanoseconds since stamp_secs
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

"""
  __slots__ = ['features','image']
  _slot_types = ['feature_extraction/CvSURFPoint[]','sensor_msgs/Image']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       features,image

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ObjectFeatureMsg, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.features is None:
        self.features = []
      if self.image is None:
        self.image = sensor_msgs.msg.Image()
    else:
      self.features = []
      self.image = sensor_msgs.msg.Image()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      length = len(self.features)
      buff.write(_struct_I.pack(length))
      for val1 in self.features:
        _v1 = val1.pt
        _x = _v1
        buff.write(_struct_2f.pack(_x.x, _x.y))
        _x = val1
        buff.write(_struct_2i2f.pack(_x.laplacian, _x.size, _x.dir, _x.hessian))
      _x = self
      buff.write(_struct_3I.pack(_x.image.header.seq, _x.image.header.stamp.secs, _x.image.header.stamp.nsecs))
      _x = self.image.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_2I.pack(_x.image.height, _x.image.width))
      _x = self.image.encoding
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_BI.pack(_x.image.is_bigendian, _x.image.step))
      _x = self.image.data
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.features is None:
        self.features = None
      if self.image is None:
        self.image = sensor_msgs.msg.Image()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.features = []
      for i in range(0, length):
        val1 = feature_extraction.msg.CvSURFPoint()
        _v2 = val1.pt
        _x = _v2
        start = end
        end += 8
        (_x.x, _x.y,) = _struct_2f.unpack(str[start:end])
        _x = val1
        start = end
        end += 16
        (_x.laplacian, _x.size, _x.dir, _x.hessian,) = _struct_2i2f.unpack(str[start:end])
        self.features.append(val1)
      _x = self
      start = end
      end += 12
      (_x.image.header.seq, _x.image.header.stamp.secs, _x.image.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.image.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.image.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.image.height, _x.image.width,) = _struct_2I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.image.encoding = str[start:end].decode('utf-8')
      else:
        self.image.encoding = str[start:end]
      _x = self
      start = end
      end += 5
      (_x.image.is_bigendian, _x.image.step,) = _struct_BI.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.image.data = str[start:end].decode('utf-8')
      else:
        self.image.data = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      length = len(self.features)
      buff.write(_struct_I.pack(length))
      for val1 in self.features:
        _v3 = val1.pt
        _x = _v3
        buff.write(_struct_2f.pack(_x.x, _x.y))
        _x = val1
        buff.write(_struct_2i2f.pack(_x.laplacian, _x.size, _x.dir, _x.hessian))
      _x = self
      buff.write(_struct_3I.pack(_x.image.header.seq, _x.image.header.stamp.secs, _x.image.header.stamp.nsecs))
      _x = self.image.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_2I.pack(_x.image.height, _x.image.width))
      _x = self.image.encoding
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_BI.pack(_x.image.is_bigendian, _x.image.step))
      _x = self.image.data
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.features is None:
        self.features = None
      if self.image is None:
        self.image = sensor_msgs.msg.Image()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.features = []
      for i in range(0, length):
        val1 = feature_extraction.msg.CvSURFPoint()
        _v4 = val1.pt
        _x = _v4
        start = end
        end += 8
        (_x.x, _x.y,) = _struct_2f.unpack(str[start:end])
        _x = val1
        start = end
        end += 16
        (_x.laplacian, _x.size, _x.dir, _x.hessian,) = _struct_2i2f.unpack(str[start:end])
        self.features.append(val1)
      _x = self
      start = end
      end += 12
      (_x.image.header.seq, _x.image.header.stamp.secs, _x.image.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.image.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.image.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.image.height, _x.image.width,) = _struct_2I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.image.encoding = str[start:end].decode('utf-8')
      else:
        self.image.encoding = str[start:end]
      _x = self
      start = end
      end += 5
      (_x.image.is_bigendian, _x.image.step,) = _struct_BI.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.image.data = str[start:end].decode('utf-8')
      else:
        self.image.data = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_2f = struct.Struct("<2f")
_struct_BI = struct.Struct("<BI")
_struct_3I = struct.Struct("<3I")
_struct_2I = struct.Struct("<2I")
_struct_2i2f = struct.Struct("<2i2f")
