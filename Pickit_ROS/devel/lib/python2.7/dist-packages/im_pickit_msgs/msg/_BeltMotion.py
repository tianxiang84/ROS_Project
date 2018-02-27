# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from im_pickit_msgs/BeltMotion.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class BeltMotion(genpy.Message):
  _md5sum = "e1418c364a9790e036636f3c087e1c72"
  _type = "im_pickit_msgs/BeltMotion"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """## Copyright Intermodalics 2014
# Angular twist message

string frame_id											# Parent frame (camera)
string child_frame_id									# Child frame (belt)
int32 object_motion_type								# Object motion type 0 = static, 1 = linear, 2 = angular														
geometry_msgs/Transform camera_to_belt_tf				# Camera to belt frame. Transforms belt to camera coordinates.
														# - std_msgs/Header header
														# - string child_frame_id
														# - geometry_msgs/Transform transform
														
float64 belt_speed_magnitude							# Magnitude linear velocity
geometry_msgs/Vector3 belt_normalised_speed_vector		# Direction of linear speed in belt frame

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
"""
  __slots__ = ['frame_id','child_frame_id','object_motion_type','camera_to_belt_tf','belt_speed_magnitude','belt_normalised_speed_vector']
  _slot_types = ['string','string','int32','geometry_msgs/Transform','float64','geometry_msgs/Vector3']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       frame_id,child_frame_id,object_motion_type,camera_to_belt_tf,belt_speed_magnitude,belt_normalised_speed_vector

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(BeltMotion, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.frame_id is None:
        self.frame_id = ''
      if self.child_frame_id is None:
        self.child_frame_id = ''
      if self.object_motion_type is None:
        self.object_motion_type = 0
      if self.camera_to_belt_tf is None:
        self.camera_to_belt_tf = geometry_msgs.msg.Transform()
      if self.belt_speed_magnitude is None:
        self.belt_speed_magnitude = 0.
      if self.belt_normalised_speed_vector is None:
        self.belt_normalised_speed_vector = geometry_msgs.msg.Vector3()
    else:
      self.frame_id = ''
      self.child_frame_id = ''
      self.object_motion_type = 0
      self.camera_to_belt_tf = geometry_msgs.msg.Transform()
      self.belt_speed_magnitude = 0.
      self.belt_normalised_speed_vector = geometry_msgs.msg.Vector3()

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
      _x = self.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.child_frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_i11d().pack(_x.object_motion_type, _x.camera_to_belt_tf.translation.x, _x.camera_to_belt_tf.translation.y, _x.camera_to_belt_tf.translation.z, _x.camera_to_belt_tf.rotation.x, _x.camera_to_belt_tf.rotation.y, _x.camera_to_belt_tf.rotation.z, _x.camera_to_belt_tf.rotation.w, _x.belt_speed_magnitude, _x.belt_normalised_speed_vector.x, _x.belt_normalised_speed_vector.y, _x.belt_normalised_speed_vector.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.camera_to_belt_tf is None:
        self.camera_to_belt_tf = geometry_msgs.msg.Transform()
      if self.belt_normalised_speed_vector is None:
        self.belt_normalised_speed_vector = geometry_msgs.msg.Vector3()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.frame_id = str[start:end].decode('utf-8')
      else:
        self.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.child_frame_id = str[start:end].decode('utf-8')
      else:
        self.child_frame_id = str[start:end]
      _x = self
      start = end
      end += 92
      (_x.object_motion_type, _x.camera_to_belt_tf.translation.x, _x.camera_to_belt_tf.translation.y, _x.camera_to_belt_tf.translation.z, _x.camera_to_belt_tf.rotation.x, _x.camera_to_belt_tf.rotation.y, _x.camera_to_belt_tf.rotation.z, _x.camera_to_belt_tf.rotation.w, _x.belt_speed_magnitude, _x.belt_normalised_speed_vector.x, _x.belt_normalised_speed_vector.y, _x.belt_normalised_speed_vector.z,) = _get_struct_i11d().unpack(str[start:end])
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
      _x = self.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.child_frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_i11d().pack(_x.object_motion_type, _x.camera_to_belt_tf.translation.x, _x.camera_to_belt_tf.translation.y, _x.camera_to_belt_tf.translation.z, _x.camera_to_belt_tf.rotation.x, _x.camera_to_belt_tf.rotation.y, _x.camera_to_belt_tf.rotation.z, _x.camera_to_belt_tf.rotation.w, _x.belt_speed_magnitude, _x.belt_normalised_speed_vector.x, _x.belt_normalised_speed_vector.y, _x.belt_normalised_speed_vector.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.camera_to_belt_tf is None:
        self.camera_to_belt_tf = geometry_msgs.msg.Transform()
      if self.belt_normalised_speed_vector is None:
        self.belt_normalised_speed_vector = geometry_msgs.msg.Vector3()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.frame_id = str[start:end].decode('utf-8')
      else:
        self.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.child_frame_id = str[start:end].decode('utf-8')
      else:
        self.child_frame_id = str[start:end]
      _x = self
      start = end
      end += 92
      (_x.object_motion_type, _x.camera_to_belt_tf.translation.x, _x.camera_to_belt_tf.translation.y, _x.camera_to_belt_tf.translation.z, _x.camera_to_belt_tf.rotation.x, _x.camera_to_belt_tf.rotation.y, _x.camera_to_belt_tf.rotation.z, _x.camera_to_belt_tf.rotation.w, _x.belt_speed_magnitude, _x.belt_normalised_speed_vector.x, _x.belt_normalised_speed_vector.y, _x.belt_normalised_speed_vector.z,) = _get_struct_i11d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_i11d = None
def _get_struct_i11d():
    global _struct_i11d
    if _struct_i11d is None:
        _struct_i11d = struct.Struct("<i11d")
    return _struct_i11d
