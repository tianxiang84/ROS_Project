#ifndef IM_PICKIT_MSGS_COMMON_H
#define IM_PICKIT_MSGS_COMMON_H

#include <boost/filesystem.hpp>

#include <im_pickit_msgs/Object.h>
#include <im_pickit_msgs/StatusUnpickable.h>
#include <im_pickit_msgs/SubStatus.h>

namespace im_pickit_msgs {
namespace common {

namespace Algorithm {
enum {
  FLEX = 1,
  TEACH = 2,
  PATTERN = 3
};
};

enum PickitConfiguration {
  NONE = 0,
  SETUP = 1,
  PRODUCT = 2,
  DEPLOYER_CONFIG = 3,
  BACKGROUND = 4,
  MODEL = 5
};

/// Frame id being used for the robot's base frame.
static const char ROBOT_BASE_FRAME_ID[] = "pickit/robot_base";
/// Frame id being used for the robot's end-effector frame.
static const char ROBOT_EE_FRAME_ID[] = "pickit/robot_ee";

inline bool replaceStringPrefix(const std::string &prefix_old,
                                const std::string &prefix_new,
                                std::string &str) {
  if (str.substr(0, prefix_old.size()) != prefix_old) {
    return false;
  }
  str.replace(0, prefix_old.size(), prefix_new);
  return true;
}

inline bool replaceStringSuffix(const std::string &suffix_old,
                                const std::string &suffix_new,
                                std::string &str) {
  const std::string::size_type pos = str.size() - suffix_old.size();
  if (str.substr(pos) != suffix_old) {
    return false;
  }
  str.replace(pos, std::string::npos, suffix_new);
  return true;
}

/**
 * @brief Helper function to derive the path of a background/model file from a
 * setup/product configuration path.
 * @param config_file_path Path of configuration file.
 * @param config_file_type Type of configuration file (setup/product).
 * @param target_file_type Type of the target configuration file.
 * @param target_file_path Output path to target configuration file.
 * @return Boolean indicating success.
 */
inline bool deriveConfigFilePath(const boost::filesystem::path config_file_path,
                                 PickitConfiguration config_file_type,
                                 PickitConfiguration target_file_type,
                                 boost::filesystem::path &target_file_path) {
  if (config_file_type == SETUP) {
    // Only background can be derived from setup configuration.
    if (target_file_type != BACKGROUND) return false;

    std::string bg_filename = config_file_path.filename().string();
    if (!replaceStringPrefix("setup", "background", bg_filename) ||
        !replaceStringSuffix("cpf", "pcd", bg_filename))
      return false;

    // We find the background cloud relative to the setup file in
    // ../background_clouds/<bg_filename>.
    target_file_path =
        config_file_path.parent_path() / "../background_clouds" / bg_filename;
    target_file_path.normalize();
  } else if (config_file_type == PRODUCT) {
    // Only model can be derived from product configuration.
    if (target_file_type != MODEL) return false;

    std::string model_filename = config_file_path.filename().string();
    if (!replaceStringPrefix("product", "model", model_filename) ||
        !replaceStringSuffix("cpf", "pcd", model_filename))
      return false;

    // We find the model cloud relative to the product file in
    // ../models/<model_filename>.
    target_file_path =
        config_file_path.parent_path() / "../models" / model_filename;
    target_file_path.normalize();
  } else {
    return false;
  }

  return true;
}
}
}

#endif  // IM_PICKIT_MSGS_COMMON_H
