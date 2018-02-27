#ifndef IM_PICKIT_MSGS_OBJECT_HELPERS_H
#define IM_PICKIT_MSGS_OBJECT_HELPERS_H

#include <im_pickit_msgs/Object.h>
#include <im_pickit_msgs/StatusUnpickable.h>
#include <im_pickit_msgs/SubStatus.h>

namespace im_pickit_msgs {

static bool operator==(const SubStatus& s1, const SubStatus& s2) {
  return (s1.substatus == s2.substatus);
}

namespace ObjectHelpers {

/**
 * @brief Check if a specific status detail (im_pickit_msgs::StatusDetail) is
 * contained in a specific object.
 * @param obj The object being checked.
 * @param substatus The substatus to look for.
 * @return Whether or not the object has the specified status.
 */
static bool hasSubStatus(const Object& obj, const SubStatus& substatus) {
  return (obj.substatuses.end() !=
          std::find(obj.substatuses.begin(), obj.substatuses.end(), substatus));
}

/**
 * @brief Checks if the given object has at least one sub status with the given
 * category set.
 * @param obj Object to check.
 * @param category Category to check sub status for.
 * @return True if at least one sub status has the given category.
 */
static bool hasCategory(const Object& obj, const std::string& category) {
  return (obj.categories.end() !=
          std::find(obj.categories.begin(), obj.categories.end(), category));
}

/**
 * Sets the object (main) status to false;
 * Adds an rejected category type for the substatus (if not present)
 * Adds a substatus detail
 * @param substatus See im_pickit_msgs::StatusDetail
 * @param category Category type of rejected object
 * @param detail Substatus detail explanation
 * @return Since usually used to denote faulty objects, return false
 */
static bool reject(Object& obj, const std::string& category,
                   const SubStatus& substatus) {
  obj.is_valid = false;

  if (!hasSubStatus(obj, substatus)) {
    obj.substatuses.push_back(substatus);
  }

  if (!hasCategory(obj, category)) {
    obj.categories.push_back(category);
  }

  return false;
}
}
}

#endif  // IM_PICKIT_MSGS_OBJECT_HELPERS_H
