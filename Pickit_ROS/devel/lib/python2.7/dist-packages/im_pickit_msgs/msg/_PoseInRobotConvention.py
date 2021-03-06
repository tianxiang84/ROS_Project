# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from im_pickit_msgs/PoseInRobotConvention.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class PoseInRobotConvention(genpy.Message):
  _md5sum = "549652ee550f87af479cfa70e3398398"
  _type = "im_pickit_msgs/PoseInRobotConvention"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# Possible robot types:
# - ABB     (Radians)
# - FANUC   (Degrees)
# - STAUBLI (Degrees)
# - KUKA    (Degrees)
# - UR      (Radians)

string       robot_type
float64[3]   position
float64[4]   orientation
string       orientation_unit
"""
  __slots__ = ['robot_type','position','orientation','orientation_unit']
  _slot_types = ['string','float64[3]','float64[4]','string']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       robot_type,position,orientation,orientation_unit

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(PoseInRobotConvention, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.robot_type is None:
        self.robot_type = ''
      if self.position is None:
        self.position = [0.] * 3
      if self.orientation is None:
        self.orientation = [0.] * 4
      if self.orientation_unit is None:
        self.orientation_unit = ''
    else:
      self.robot_type = ''
      self.position = [0.] * 3
      self.orientation = [0.] * 4
      self.orientation_unit = ''

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
      _x = self.robot_type
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_3d().pack(*self.position))
      buff.write(_get_struct_4d().pack(*self.orientation))
      _x = self.orientation_unit
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.robot_type = str[start:end].decode('utf-8')
      else:
        self.robot_type = str[start:end]
      start = end
      end += 24
      self.position = _get_struct_3d().unpack(str[start:end])
      start = end
      end += 32
      self.orientation = _get_struct_4d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.orientation_unit = str[start:end].decode('utf-8')
      else:
        self.orientation_unit = str[start:end]
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
      _x = self.robot_type
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(self.position.tostring())
      buff.write(self.orientation.tostring())
      _x = self.orientation_unit
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.robot_type = str[start:end].decode('utf-8')
      else:
        self.robot_type = str[start:end]
      start = end
      end += 24
      self.position = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=3)
      start = end
      end += 32
      self.orientation = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=4)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.orientation_unit = str[start:end].decode('utf-8')
      else:
        self.orientation_unit = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_4d = None
def _get_struct_4d():
    global _struct_4d
    if _struct_4d is None:
        _struct_4d = struct.Struct("<4d")
    return _struct_4d
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
