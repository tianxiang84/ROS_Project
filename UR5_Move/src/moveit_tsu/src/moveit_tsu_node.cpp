#include <moveit/move_group_interface/move_group_interface.h>
#include <moveit/planning_scene_interface/planning_scene_interface.h>

#include <moveit_msgs/DisplayRobotState.h>
#include <moveit_msgs/DisplayTrajectory.h>

#include <moveit_msgs/AttachedCollisionObject.h>
#include <moveit_msgs/CollisionObject.h>

#include <moveit_visual_tools/moveit_visual_tools.h>

int main(int argc, char **argv)
{
  // *********  Start node and Multithreads
  ros::init(argc, argv, "moveit_tsu");
  ros::NodeHandle node_handle;
  ros::AsyncSpinner spinner(1);
  spinner.start();
  



  // ********** Move Group and Planning Scene Group
  // MoveIt! operates on sets of joints called "planning groups" and stores them in an object called
  // the `JointModelGroup`. Throughout MoveIt! the terms "planning group" and "joint model group"
  // are used interchangably.
  // So here we define PLANNING_GROUP as the "manipulator", in the tutorial, the name is "right arm" for PR2
  static const std::string PLANNING_GROUP = "manipulator";

  // The :move_group_interface:`MoveGroup` class can be easily
  // setup using just the name of the planning group you would like to control and plan for.
  // This is not a node, the node is "moveit_tsu" as we defined above when we initialized the node
  moveit::planning_interface::MoveGroupInterface move_group(PLANNING_GROUP);

  // We will use the :planning_scene_interface:`PlanningSceneInterface`
  // class to add and remove collision objects in our "virtual world" scene
  moveit::planning_interface::PlanningSceneInterface planning_scene_interface;

  // Raw pointers are frequently used to refer to the planning group for improved performance.
  const robot_state::JointModelGroup *joint_model_group =
    move_group.getCurrentState()->getJointModelGroup(PLANNING_GROUP);

 


  // *********** Visualization
  // The package MoveItVisualTools provides many capabilties for visualizing objects, robots,
  // and trajectories in Rviz as well as debugging tools such as step-by-step introspection of a script
  namespace rvt = rviz_visual_tools;
  moveit_visual_tools::MoveItVisualTools visual_tools("/world");
  visual_tools.deleteAllMarkers();

  // Remote control is an introspection tool that allows users to step through a high level script
  // via buttons and keyboard shortcuts in Rviz
  visual_tools.loadRemoteControl();

  // Rviz provides many types of markers, in this demo we will use text, cylinders, and spheres
  Eigen::Affine3d text_pose = Eigen::Affine3d::Identity();
  text_pose.translation().z() = 1.75; // above head of PR2
  visual_tools.publishText(text_pose, "MoveGroupInterface Demo", rvt::WHITE, rvt::XLARGE);
  
  // Batch publishing is used to reduce the number of messages being sent to Rviz for large visualizations
  visual_tools.trigger();




  // *********** Getting Basic Information
  // see the available functions http://docs.ros.org/jade/api/moveit_ros_planning_interface/html/classmoveit_1_1planning__interface_1_1MoveGroup.html

  // We can print the name of the reference frame for this robot.
  ROS_INFO_NAMED("Tianxiang's first test", "Reference frame: %s", move_group.getPlanningFrame().c_str());

  // We can also print the name of the end-effector link for this group.
  ROS_INFO_NAMED("Tianxiang's first test", "End effector link: %s", move_group.getEndEffectorLink().c_str());






  // *********** Planning to a Pose goal 1 (Imposing Joint)
  //
  // Let's set a joint space goal and move towards it.
  //
  // To start, we'll create an pointer that references the current robot's state.
  // RobotState is the object that contains all the current position/velocity/acceleration data.

  moveit::core::RobotStatePtr current_state = move_group.getCurrentState();

  // Next get the current set of joint values for the group.
  std::vector<double> joint_group_positions;
  
  moveit::planning_interface::MoveGroupInterface::Plan my_plan;
  
  for(int rotationTimes=1; rotationTimes<=10; rotationTimes++)
  {
      current_state->copyJointGroupPositions(joint_model_group, joint_group_positions);

      // Now, let's modify one of the joints, plan to the new joint space goal and visualize the plan.
      //joint_group_positions[0] = -1.0*(3.1415926/180.0);  // radians
      joint_group_positions[0] = joint_group_positions[0] - 20.0*(3.1415926/180.0);  // radians
      
      move_group.setJointValueTarget(joint_group_positions);

      bool success = (move_group.plan(my_plan) == moveit::planning_interface::MoveItErrorCode::SUCCESS);
      ROS_INFO_NAMED("tutorial", "Visualizing plan 2 (joint space goal) %s", success ? "" : "FAILED");
 
     // Visualize the plan in Rviz
     visual_tools.deleteAllMarkers();
     visual_tools.publishText(text_pose, "Joint Space Goal", rvt::WHITE, rvt::XLARGE);
     visual_tools.publishTrajectoryLine(my_plan.trajectory_, joint_model_group);
  
     visual_tools.trigger();
     //visual_tools.prompt("next step");

     //move_group.move();
     sleep(5);
  }


  //End the node
  ros::shutdown();
  return 0;
}
