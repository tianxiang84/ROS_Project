# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from im_pickit_msgs/Reliability.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import im_pickit_msgs.msg

class Reliability(genpy.Message):
  _md5sum = "685a54d871aab00bbe45a67c03dafaea"
  _type = "im_pickit_msgs/Reliability"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """## Contains all parameters describing reliability of detected object
## Values expressed as confidence levels ranging from 0.0 to 1.0

## Ratio of inlier points close to the border of the "Intermodalics hole" and
## all points of the "Intermodalics hole".
ReliabilityValue scene_coverage_2d

## Ratio of inlier points to all points in the cluster.
ReliabilityValue scene_coverage_3d

### TODO(@wannesvanloock): Add description pls.
ReliabilityValue model_contour_coverage_2d
### TODO(@wannesvanloock): Add description pls.
ReliabilityValue model_surface_coverage_2d

## 3D reliability of the matched model
ReliabilityValue model_coverage_3d

================================================================================
MSG: im_pickit_msgs/ReliabilityValue
float64 value
float64 required_value

# mostly we work with lower limits so usually this is false
bool has_upper_limit     """
  __slots__ = ['scene_coverage_2d','scene_coverage_3d','model_contour_coverage_2d','model_surface_coverage_2d','model_coverage_3d']
  _slot_types = ['im_pickit_msgs/ReliabilityValue','im_pickit_msgs/ReliabilityValue','im_pickit_msgs/ReliabilityValue','im_pickit_msgs/ReliabilityValue','im_pickit_msgs/ReliabilityValue']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       scene_coverage_2d,scene_coverage_3d,model_contour_coverage_2d,model_surface_coverage_2d,model_coverage_3d

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Reliability, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.scene_coverage_2d is None:
        self.scene_coverage_2d = im_pickit_msgs.msg.ReliabilityValue()
      if self.scene_coverage_3d is None:
        self.scene_coverage_3d = im_pickit_msgs.msg.ReliabilityValue()
      if self.model_contour_coverage_2d is None:
        self.model_contour_coverage_2d = im_pickit_msgs.msg.ReliabilityValue()
      if self.model_surface_coverage_2d is None:
        self.model_surface_coverage_2d = im_pickit_msgs.msg.ReliabilityValue()
      if self.model_coverage_3d is None:
        self.model_coverage_3d = im_pickit_msgs.msg.ReliabilityValue()
    else:
      self.scene_coverage_2d = im_pickit_msgs.msg.ReliabilityValue()
      self.scene_coverage_3d = im_pickit_msgs.msg.ReliabilityValue()
      self.model_contour_coverage_2d = im_pickit_msgs.msg.ReliabilityValue()
      self.model_surface_coverage_2d = im_pickit_msgs.msg.ReliabilityValue()
      self.model_coverage_3d = im_pickit_msgs.msg.ReliabilityValue()

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
      _x = self
      buff.write(_get_struct_2dB2dB2dB2dB2dB().pack(_x.scene_coverage_2d.value, _x.scene_coverage_2d.required_value, _x.scene_coverage_2d.has_upper_limit, _x.scene_coverage_3d.value, _x.scene_coverage_3d.required_value, _x.scene_coverage_3d.has_upper_limit, _x.model_contour_coverage_2d.value, _x.model_contour_coverage_2d.required_value, _x.model_contour_coverage_2d.has_upper_limit, _x.model_surface_coverage_2d.value, _x.model_surface_coverage_2d.required_value, _x.model_surface_coverage_2d.has_upper_limit, _x.model_coverage_3d.value, _x.model_coverage_3d.required_value, _x.model_coverage_3d.has_upper_limit))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.scene_coverage_2d is None:
        self.scene_coverage_2d = im_pickit_msgs.msg.ReliabilityValue()
      if self.scene_coverage_3d is None:
        self.scene_coverage_3d = im_pickit_msgs.msg.ReliabilityValue()
      if self.model_contour_coverage_2d is None:
        self.model_contour_coverage_2d = im_pickit_msgs.msg.ReliabilityValue()
      if self.model_surface_coverage_2d is None:
        self.model_surface_coverage_2d = im_pickit_msgs.msg.ReliabilityValue()
      if self.model_coverage_3d is None:
        self.model_coverage_3d = im_pickit_msgs.msg.ReliabilityValue()
      end = 0
      _x = self
      start = end
      end += 85
      (_x.scene_coverage_2d.value, _x.scene_coverage_2d.required_value, _x.scene_coverage_2d.has_upper_limit, _x.scene_coverage_3d.value, _x.scene_coverage_3d.required_value, _x.scene_coverage_3d.has_upper_limit, _x.model_contour_coverage_2d.value, _x.model_contour_coverage_2d.required_value, _x.model_contour_coverage_2d.has_upper_limit, _x.model_surface_coverage_2d.value, _x.model_surface_coverage_2d.required_value, _x.model_surface_coverage_2d.has_upper_limit, _x.model_coverage_3d.value, _x.model_coverage_3d.required_value, _x.model_coverage_3d.has_upper_limit,) = _get_struct_2dB2dB2dB2dB2dB().unpack(str[start:end])
      self.scene_coverage_2d.has_upper_limit = bool(self.scene_coverage_2d.has_upper_limit)
      self.scene_coverage_3d.has_upper_limit = bool(self.scene_coverage_3d.has_upper_limit)
      self.model_contour_coverage_2d.has_upper_limit = bool(self.model_contour_coverage_2d.has_upper_limit)
      self.model_surface_coverage_2d.has_upper_limit = bool(self.model_surface_coverage_2d.has_upper_limit)
      self.model_coverage_3d.has_upper_limit = bool(self.model_coverage_3d.has_upper_limit)
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
      _x = self
      buff.write(_get_struct_2dB2dB2dB2dB2dB().pack(_x.scene_coverage_2d.value, _x.scene_coverage_2d.required_value, _x.scene_coverage_2d.has_upper_limit, _x.scene_coverage_3d.value, _x.scene_coverage_3d.required_value, _x.scene_coverage_3d.has_upper_limit, _x.model_contour_coverage_2d.value, _x.model_contour_coverage_2d.required_value, _x.model_contour_coverage_2d.has_upper_limit, _x.model_surface_coverage_2d.value, _x.model_surface_coverage_2d.required_value, _x.model_surface_coverage_2d.has_upper_limit, _x.model_coverage_3d.value, _x.model_coverage_3d.required_value, _x.model_coverage_3d.has_upper_limit))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.scene_coverage_2d is None:
        self.scene_coverage_2d = im_pickit_msgs.msg.ReliabilityValue()
      if self.scene_coverage_3d is None:
        self.scene_coverage_3d = im_pickit_msgs.msg.ReliabilityValue()
      if self.model_contour_coverage_2d is None:
        self.model_contour_coverage_2d = im_pickit_msgs.msg.ReliabilityValue()
      if self.model_surface_coverage_2d is None:
        self.model_surface_coverage_2d = im_pickit_msgs.msg.ReliabilityValue()
      if self.model_coverage_3d is None:
        self.model_coverage_3d = im_pickit_msgs.msg.ReliabilityValue()
      end = 0
      _x = self
      start = end
      end += 85
      (_x.scene_coverage_2d.value, _x.scene_coverage_2d.required_value, _x.scene_coverage_2d.has_upper_limit, _x.scene_coverage_3d.value, _x.scene_coverage_3d.required_value, _x.scene_coverage_3d.has_upper_limit, _x.model_contour_coverage_2d.value, _x.model_contour_coverage_2d.required_value, _x.model_contour_coverage_2d.has_upper_limit, _x.model_surface_coverage_2d.value, _x.model_surface_coverage_2d.required_value, _x.model_surface_coverage_2d.has_upper_limit, _x.model_coverage_3d.value, _x.model_coverage_3d.required_value, _x.model_coverage_3d.has_upper_limit,) = _get_struct_2dB2dB2dB2dB2dB().unpack(str[start:end])
      self.scene_coverage_2d.has_upper_limit = bool(self.scene_coverage_2d.has_upper_limit)
      self.scene_coverage_3d.has_upper_limit = bool(self.scene_coverage_3d.has_upper_limit)
      self.model_contour_coverage_2d.has_upper_limit = bool(self.model_contour_coverage_2d.has_upper_limit)
      self.model_surface_coverage_2d.has_upper_limit = bool(self.model_surface_coverage_2d.has_upper_limit)
      self.model_coverage_3d.has_upper_limit = bool(self.model_coverage_3d.has_upper_limit)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2dB2dB2dB2dB2dB = None
def _get_struct_2dB2dB2dB2dB2dB():
    global _struct_2dB2dB2dB2dB2dB
    if _struct_2dB2dB2dB2dB2dB is None:
        _struct_2dB2dB2dB2dB2dB = struct.Struct("<2dB2dB2dB2dB2dB")
    return _struct_2dB2dB2dB2dB2dB