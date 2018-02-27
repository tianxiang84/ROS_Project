#include <moveit/move_group_interface/move_group_interface.h>
#include <moveit/planning_scene_interface/planning_scene_interface.h>

#include <moveit_msgs/DisplayRobotState.h>
#include <moveit_msgs/DisplayTrajectory.h>

#include <moveit_msgs/AttachedCollisionObject.h>
#include <moveit_msgs/CollisionObject.h>

#include <moveit_visual_tools/moveit_visual_tools.h>

#include <iostream>
using namespace std;

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
  //static const std::string PLANNING_GROUP = "endeffector";

  // The :move_group_interface:`MoveGroup` class can be easily
  // setup using just the name of the planning group you would like to control and plan for.
  // This is not a node, the node is "moveit_tsu" as we defined above when we initialized the node
  moveit::planning_interface::MoveGroupInterface move_group(PLANNING_GROUP);

  // We will use the :planning_scene_interface:`PlanningSceneInterface`
  // class to add and remove collision objects in our "virtual world" scene
  moveit::planning_interface::PlanningSceneInterface planning_scene_interface;

  // Raw pointers are frequently used to refer to the planning group for improved performance.
  const robot_state::JointModelGroup *joint_model_group = move_group.getCurrentState()->getJointModelGroup(PLANNING_GROUP);



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



  // ********** Set the velocity scale and acceleration scale
  //
  // It seems if we set these two numbers to be large, it will overshoot.

  moveit::planning_interface::MoveGroupInterface::Plan my_plan;
  bool success; //[bool] whether it is a successful planning or not


  move_group.setMaxAccelerationScalingFactor(0.01);
  move_group.setMaxVelocityScalingFactor(0.5);

/*
  // *********** 1. Planning to a set of joint angles
  //
  // Let's set a joint space goal and move towards it.
  //
  // To start, we'll create an pointer that references the current robot's state.
  // RobotState is the object that contains all the current position/velocity/acceleration data.

  // Initialize an empty vector to set the target joint angle
  std::vector<double> joint_group_positions;

  // Set a RobotState pointer so we can copy the current joint angles to an empty vector
  moveit::core::RobotStatePtr current_state = move_group.getCurrentState();
  
  for(int rotationTimes=1; rotationTimes<2; rotationTimes++)
  {
      // Copy the current joint angle into the just-defined vector
      current_state->copyJointGroupPositions(joint_model_group, joint_group_positions);

      // Now, let's modify one of the joints, plan to the new joint space goal and visualize the plan.
      for(int jointID=0; jointID<6; jointID++)
         joint_group_positions[jointID] = 0.0*(3.1415926/180.0);  // radians
      joint_group_positions[1] = -90.0*(3.1415926/180.0);
      joint_group_positions[3] = -90.0*(3.1415926/180.0);      
 
      // Use the vector to define the target
      move_group.setJointValueTarget(joint_group_positions);

      // Plan
      success = (move_group.plan(my_plan) == moveit::planning_interface::MoveItErrorCode::SUCCESS);
      ROS_INFO_NAMED("tutorial", "Visualizing plan in joint space: %s", success ? "SUCCESS" : "FAILED");
 
     // Visualize the plan in Rviz
     visual_tools.deleteAllMarkers();
     visual_tools.publishText(text_pose, "Joint Space Goal", rvt::WHITE, rvt::XLARGE);
     visual_tools.publishTrajectoryLine(my_plan.trajectory_, joint_model_group);
  
     visual_tools.trigger();
     //visual_tools.prompt("next step");

     // Move the robot
     move_group.move();
  }

  for(int rotationTimes=1; rotationTimes<=10; rotationTimes++)
  {
      current_state->copyJointGroupPositions(joint_model_group, joint_group_positions);

      // Now, let's modify one of the joints, plan to the new joint space goal and visualize the plan.
      joint_group_positions[0] = joint_group_positions[0] - 5.0*(3.1415926/180.0);  // radians      
      joint_group_positions[0] = - (5.0)*(rotationTimes)*(3.1415926/180.0);  // radians 

      move_group.setJointValueTarget(joint_group_positions);

      success = (move_group.plan(my_plan) == moveit::planning_interface::MoveItErrorCode::SUCCESS);
      ROS_INFO_NAMED("tutorial", "Visualizing plan in joint space: %s", success ? "SUCCESS" : "FAILED");
 
     // Visualize the plan in Rviz
     visual_tools.deleteAllMarkers();
     visual_tools.publishText(text_pose, "Joint Space Goal", rvt::WHITE, rvt::XLARGE);
     visual_tools.publishTrajectoryLine(my_plan.trajectory_, joint_model_group);
  
     visual_tools.trigger();
     //visual_tools.prompt("next step");

     move_group.move();
     
     ros::Duration(2.0).sleep();
  }

  for(int rotationTimes=1; rotationTimes<2; rotationTimes++)
  {
      current_state->copyJointGroupPositions(joint_model_group, joint_group_positions);

      // Now, let's modify one of the joints, plan to the new joint space goal and visualize the plan.
      for(int jointID=0; jointID<6; jointID++)
         joint_group_positions[jointID] = 0.0*(3.1415926/180.0);  // radians      
      joint_group_positions[1] = -90.0*(3.1415926/180.0);
      joint_group_positions[3] = -90.0*(3.1415926/180.0);   

      move_group.setJointValueTarget(joint_group_positions);


      success = (move_group.plan(my_plan) == moveit::planning_interface::MoveItErrorCode::SUCCESS);
      ROS_INFO_NAMED("tutorial", "Visualizing plan in joint space: %s", success ? "SUCCESS" : "FAILED");
 
     // Visualize the plan in Rviz
     visual_tools.deleteAllMarkers();
     visual_tools.publishText(text_pose, "Joint Space Goal", rvt::WHITE, rvt::XLARGE);
     visual_tools.publishTrajectoryLine(my_plan.trajectory_, joint_model_group);
  
     visual_tools.trigger();
     //visual_tools.prompt("next step");

     move_group.move();
  }
*/












  move_group.setMaxAccelerationScalingFactor(0.01);
  move_group.setMaxVelocityScalingFactor(0.8);

  // *********** 1.1 Planning to a set of joint angles
  //
  // Let's set a joint space goal and move towards it.
  //
  // To start, we'll create an pointer that references the current robot's state.
  // RobotState is the object that contains all the current position/velocity/acceleration data.



  // Define a collision object ROS message.
  moveit_msgs::CollisionObject collision_object;
  collision_object.header.frame_id = move_group.getPlanningFrame();

  // The id of the object is used to identify it.
  collision_object.id = "box1";

  // Define a box to add to the world.
  shape_msgs::SolidPrimitive primitive;
  primitive.type = primitive.BOX;
  primitive.dimensions.resize(3);
  primitive.dimensions[0] = 2.0;
  primitive.dimensions[1] = 2.0;
  primitive.dimensions[2] = 0.1;

  //Define a pose for the box (specified relative to frame_id)
  geometry_msgs::Pose box_pose;
  box_pose.orientation.w = 1.0;
  box_pose.position.x = 0.0;
  box_pose.position.y = 0.0;
  box_pose.position.z = -0.1;

  collision_object.primitives.push_back(primitive);
  collision_object.primitive_poses.push_back(box_pose);
  collision_object.operation = collision_object.ADD;

  std::vector<moveit_msgs::CollisionObject> collision_objects;
  collision_objects.push_back(collision_object);

  // Now, let's add the collision object into the world
  ROS_INFO_NAMED("tutorial", "Add an object into the world");
  planning_scene_interface.addCollisionObjects(collision_objects);

  // Show text in Rviz of status
  visual_tools.publishText(text_pose, "Add object", rvt::WHITE, rvt::XLARGE);
  visual_tools.trigger();

  // Sleep to allow MoveGroup to recieve and process the collision object message
  ros::Duration(1.0).sleep();




  // Initialize an empty vector to set the target joint angle
  const std::string poseName_up = "up";
  const std::string poseName_pk_casing_home = "pk_casing_home";
  const std::string poseName_pk_casing_wp1  = "pk_casing_wp1";
  const std::string poseName_pk_casing_wp2  = "pk_casing_wp2";
  const std::string poseName_pk_casing_pkp1 = "pk_casing_pkp1";
  const std::string poseName_pk_casing_pkp2 = "pk_casing_pkp2";
  const std::string poseName_pk_casing_place = "pk_casing_place";
  for(int rotationTimes=1; rotationTimes<=5; rotationTimes++)
  {
      ///////////////////////////////////////////////////
      // Use the pre-defined group pose in the srdf file to target the up position
      move_group.setNamedTarget(poseName_up);

      // Planning
      success = (move_group.plan(my_plan) == moveit::planning_interface::MoveItErrorCode::SUCCESS);
      ROS_INFO_NAMED("tutorial", "Planning to go up: %s", success ? "SUCCESS" : "FAILED");
 
      // Visualize the plan in Rviz
      visual_tools.deleteAllMarkers();
      visual_tools.publishText(text_pose, "Joint Space Goal", rvt::WHITE, rvt::XLARGE);
      visual_tools.publishTrajectoryLine(my_plan.trajectory_, joint_model_group);
  
      visual_tools.trigger();
      //visual_tools.prompt("next step");

      // Move the robot
      move_group.move();
      //ros::Duration(5.0).sleep();



      ///////////////////////////////////////////////////
      // Use the pre-defined group pose in the srdf file to target the home position
      move_group.setNamedTarget(poseName_pk_casing_home);

      // Planning
      success = (move_group.plan(my_plan) == moveit::planning_interface::MoveItErrorCode::SUCCESS);
      ROS_INFO_NAMED("tutorial", "Planning to go home: %s", success ? "SUCCESS" : "FAILED");
 
      // Visualize the plan in Rviz
      visual_tools.deleteAllMarkers();
      visual_tools.publishText(text_pose, "Joint Space Goal", rvt::WHITE, rvt::XLARGE);
      visual_tools.publishTrajectoryLine(my_plan.trajectory_, joint_model_group);
  
      visual_tools.trigger();
      //visual_tools.prompt("next step");

      // Move the robot
      move_group.move();
      //ros::Duration(5.0).sleep();





      ///////////////////////////////////////////////////
      // Use the pre-defined group pose in the srdf file to target the way point 1 position
      move_group.setNamedTarget(poseName_pk_casing_wp1);

      // Planning
      success = (move_group.plan(my_plan) == moveit::planning_interface::MoveItErrorCode::SUCCESS);
      ROS_INFO_NAMED("tutorial", "Planning to go to way point 1: %s", success ? "SUCCESS" : "FAILED");
 
      // Visualize the plan in Rviz
      visual_tools.deleteAllMarkers();
      visual_tools.publishText(text_pose, "Joint Space Goal", rvt::WHITE, rvt::XLARGE);
      visual_tools.publishTrajectoryLine(my_plan.trajectory_, joint_model_group);
  
      visual_tools.trigger();
      //visual_tools.prompt("next step");

      // Move the robot
      move_group.move();
      //ros::Duration(5.0).sleep();






      ///////////////////////////////////////////////////
      // Use the pre-defined group pose in the srdf file to target the pre-pick 2 position
      move_group.setNamedTarget(poseName_pk_casing_pkp2);

      // Planning
      success = (move_group.plan(my_plan) == moveit::planning_interface::MoveItErrorCode::SUCCESS);
      ROS_INFO_NAMED("tutorial", "Planning to go to pick up position 2: %s", success ? "SUCCESS" : "FAILED");
 
      // Visualize the plan in Rviz
      visual_tools.deleteAllMarkers();
      visual_tools.publishText(text_pose, "Joint Space Goal", rvt::WHITE, rvt::XLARGE);
      visual_tools.publishTrajectoryLine(my_plan.trajectory_, joint_model_group);
  
      visual_tools.trigger();
      //visual_tools.prompt("next step");

      // Move the robot
      move_group.move();
      //ros::Duration(5.0).sleep();





      ///////////////////////////////////////////////////
      // Use the pre-defined group pose in the srdf file to target the pre-pick 1 position
      move_group.setNamedTarget(poseName_pk_casing_pkp1);

      // Planning
      success = (move_group.plan(my_plan) == moveit::planning_interface::MoveItErrorCode::SUCCESS);
      ROS_INFO_NAMED("tutorial", "Planning to go to pick up position 1: %s", success ? "SUCCESS" : "FAILED");
 
      // Visualize the plan in Rviz
      visual_tools.deleteAllMarkers();
      visual_tools.publishText(text_pose, "Joint Space Goal", rvt::WHITE, rvt::XLARGE);
      visual_tools.publishTrajectoryLine(my_plan.trajectory_, joint_model_group);
  
      visual_tools.trigger();
      //visual_tools.prompt("next step");

      // Move the robot
      move_group.move();
      //ros::Duration(5.0).sleep();




      ///////////////////////////////////////////////////
      // Use the pre-defined group pose in the srdf file to target the pre-pick 2 position
      move_group.setNamedTarget(poseName_pk_casing_pkp2);

      // Planning
      success = (move_group.plan(my_plan) == moveit::planning_interface::MoveItErrorCode::SUCCESS);
      ROS_INFO_NAMED("tutorial", "Planning to go to pick up position 2: %s", success ? "SUCCESS" : "FAILED");
 
      // Visualize the plan in Rviz
      visual_tools.deleteAllMarkers();
      visual_tools.publishText(text_pose, "Joint Space Goal", rvt::WHITE, rvt::XLARGE);
      visual_tools.publishTrajectoryLine(my_plan.trajectory_, joint_model_group);
  
      visual_tools.trigger();
      //visual_tools.prompt("next step");

      // Move the robot
      move_group.move();
      //ros::Duration(5.0).sleep();






      ///////////////////////////////////////////////////
      // Use the pre-defined group pose in the srdf file to target the way point 2 position
      move_group.setNamedTarget(poseName_pk_casing_wp2);

      // Planning
      success = (move_group.plan(my_plan) == moveit::planning_interface::MoveItErrorCode::SUCCESS);
      ROS_INFO_NAMED("tutorial", "Planning to go to way point 2: %s", success ? "SUCCESS" : "FAILED");
 
      // Visualize the plan in Rviz
      visual_tools.deleteAllMarkers();
      visual_tools.publishText(text_pose, "Joint Space Goal", rvt::WHITE, rvt::XLARGE);
      visual_tools.publishTrajectoryLine(my_plan.trajectory_, joint_model_group);
  
      visual_tools.trigger();
      //visual_tools.prompt("next step");

      // Move the robot
      move_group.move();
      //ros::Duration(5.0).sleep();








      ///////////////////////////////////////////////////
      // Use the pre-defined group pose in the srdf file to target the casing placing position
      move_group.setNamedTarget(poseName_pk_casing_place);

      // Planning
      success = (move_group.plan(my_plan) == moveit::planning_interface::MoveItErrorCode::SUCCESS);
      ROS_INFO_NAMED("tutorial", "Planning to go to placing position: %s", success ? "SUCCESS" : "FAILED");
 
      // Visualize the plan in Rviz
      visual_tools.deleteAllMarkers();
      visual_tools.publishText(text_pose, "Joint Space Goal", rvt::WHITE, rvt::XLARGE);
      visual_tools.publishTrajectoryLine(my_plan.trajectory_, joint_model_group);
  
      visual_tools.trigger();
      //visual_tools.prompt("next step");

      // Move the robot
      move_group.move();
      //ros::Duration(5.0).sleep();






      ///////////////////////////////////////////////////
      // Use the pre-defined group pose in the srdf file to target the home position
      move_group.setNamedTarget(poseName_pk_casing_home);

      // Plan
      success = (move_group.plan(my_plan) == moveit::planning_interface::MoveItErrorCode::SUCCESS);
      ROS_INFO_NAMED("tutorial", "Planning to go home: %s", success ? "SUCCESS" : "FAILED");
 
      // Visualize the plan in Rviz
      visual_tools.deleteAllMarkers();
      visual_tools.publishText(text_pose, "Joint Space Goal", rvt::WHITE, rvt::XLARGE);
      visual_tools.publishTrajectoryLine(my_plan.trajectory_, joint_model_group);
  
      visual_tools.trigger();
      //visual_tools.prompt("next step");

      // Move the robot
      move_group.move();
      //ros::Duration(5.0).sleep();
  }

  // Now, let's remove the collision object from the world.
  ROS_INFO_NAMED("tutorial", "Remove the object from the world");
  std::vector<std::string> object_ids;
  object_ids.push_back(collision_object.id);
  planning_scene_interface.removeCollisionObjects(object_ids);

  // Show text in Rviz of status
  visual_tools.publishText(text_pose, "Object removed", rvt::WHITE, rvt::XLARGE);
  visual_tools.trigger();

  // Sleep to give Rviz time to show the object is no longer there.
  ros::Duration(1.0).sleep();

  














/*
  // *********** 2. Planning to a set of pose
  //
  // We can plan a motion for this group to a desired pose for the
  // end-effector.
  
  move_group.setStartState(*move_group.getCurrentState());

  geometry_msgs::PoseStamped target_pose1;
  target_pose1 = move_group.getCurrentPose();

  //cout<<target_pose1.pose.position.x<<endl
  //    <<target_pose1.pose.position.y<<endl
  //    <<target_pose1.pose.position.z<<endl
  //    <<target_pose1.pose.orientation.w<<endl;
  
  target_pose1.pose.orientation.x = target_pose1.pose.orientation.x;
  target_pose1.pose.orientation.y = target_pose1.pose.orientation.y;
  target_pose1.pose.orientation.z = target_pose1.pose.orientation.z;
  target_pose1.pose.orientation.w = target_pose1.pose.orientation.w;
  target_pose1.pose.position.x = target_pose1.pose.position.x;
  target_pose1.pose.position.y = target_pose1.pose.position.y;
  target_pose1.pose.position.z = target_pose1.pose.position.z-0.01;

  move_group.setPoseTarget(target_pose1);

  success = (move_group.plan(my_plan) == moveit::planning_interface::MoveItErrorCode::SUCCESS);

  ROS_INFO_NAMED("tutorial", "Visualizing plan for final pose %s", success ? "SUCCESS" : "FAILED");

  // Visualizing plans
  ROS_INFO_NAMED("tutorial", "Visualizing plan 1 as trajectory line");
  //visual_tools.publishAxisLabeled(target_pose1, "pose1");
  visual_tools.publishText(text_pose, "Pose Goal", rvt::WHITE, rvt::XLARGE);
  visual_tools.publishTrajectoryLine(my_plan.trajectory_, joint_model_group);
  visual_tools.trigger();

  // visual_tools.prompt("next step");

  // Moving to a pose goal
  // ^^^^^^^^^^^^^^^^^^^^^
  //
  // Moving to a pose goal is similar to the step above
  // except we now use the move() function. Note that
  // the pose goal we had set earlier is still active
  // and so the robot will try to move to that goal. We will
  // not use that function in this tutorial since it is
  // a blocking function and requires a controller to be active
  // and report success on execution of a trajectory.

  ///* Uncomment below line when working with a real robot
  ///* move_group.move()
*/








/*

  // *********** 3. Planning to a set of pose with constraints
  //
  // We can plan a motion for this group to a desired pose for the
  // end-effector.

  // Path constraints can easily be specified for a link on the robot.
  // Let's specify a path constraint and a pose goal for our group.
  // First define the path constraint.


  moveit_msgs::OrientationConstraint ocm;
  ocm.link_name = "r_wrist_roll_link";
  ocm.header.frame_id = "base_link";
  ocm.orientation.w = 1.0;
  ocm.absolute_x_axis_tolerance = 0.1;
  ocm.absolute_y_axis_tolerance = 0.1;
  ocm.absolute_z_axis_tolerance = 0.1;
  ocm.weight = 1.0;

  // Now, set it as the path constraint for the group.
  moveit_msgs::Constraints test_constraints;
  test_constraints.orientation_constraints.push_back(ocm);
  move_group.setPathConstraints(test_constraints);




  // Define a collision object ROS message.
  moveit_msgs::CollisionObject collision_object;
  collision_object.header.frame_id = move_group.getPlanningFrame();

  // The id of the object is used to identify it.
  collision_object.id = "box1";

  // Define a box to add to the world.
  shape_msgs::SolidPrimitive primitive;
  primitive.type = primitive.BOX;
  primitive.dimensions.resize(3);
  primitive.dimensions[0] = 2.0;
  primitive.dimensions[1] = 2.0;
  primitive.dimensions[2] = 0.1;

  //Define a pose for the box (specified relative to frame_id)
  geometry_msgs::Pose box_pose;
  box_pose.orientation.w = 1.0;
  box_pose.position.x = 0.0;
  box_pose.position.y = 0.0;
  box_pose.position.z = -0.1;

  collision_object.primitives.push_back(primitive);
  collision_object.primitive_poses.push_back(box_pose);
  collision_object.operation = collision_object.ADD;

  std::vector<moveit_msgs::CollisionObject> collision_objects;
  collision_objects.push_back(collision_object);

  // Now, let's add the collision object into the world
  ROS_INFO_NAMED("tutorial", "Add an object into the world");
  planning_scene_interface.addCollisionObjects(collision_objects);

  // Show text in Rviz of status
  visual_tools.publishText(text_pose, "Add object", rvt::WHITE, rvt::XLARGE);
  visual_tools.trigger();

  // Sleep to allow MoveGroup to recieve and process the collision object message
  ros::Duration(1.0).sleep();






  move_group.setStartState(*move_group.getCurrentState());

  geometry_msgs::PoseStamped target_pose1;
  target_pose1 = move_group.getCurrentPose();

  target_pose1.pose.orientation.x = target_pose1.pose.orientation.x;
  target_pose1.pose.orientation.y = target_pose1.pose.orientation.y;
  target_pose1.pose.orientation.z = target_pose1.pose.orientation.z;
  target_pose1.pose.orientation.w = target_pose1.pose.orientation.w;
  target_pose1.pose.position.x = target_pose1.pose.position.x;
  target_pose1.pose.position.y = target_pose1.pose.position.y;
  target_pose1.pose.position.z = target_pose1.pose.position.z-0.06;

  move_group.setPoseTarget(target_pose1);

  move_group.setPlanningTime(10.0);

  success = (move_group.plan(my_plan) == moveit::planning_interface::MoveItErrorCode::SUCCESS);

  ROS_INFO_NAMED("tutorial", "Visualizing plan for final pose %s", success ? "SUCCESS" : "FAILED");

  // Visualizing plans
  ROS_INFO_NAMED("tutorial", "Visualizing plan 1 as trajectory line");

  visual_tools.deleteAllMarkers();
  //visual_tools.publishAxisLabeled(start_pose2, "start");
  //visual_tools.publishAxisLabeled(target_pose1, "goal");
  visual_tools.publishText(text_pose, "Constrained Goal", rvt::WHITE, rvt::XLARGE);
  visual_tools.publishTrajectoryLine(my_plan.trajectory_, joint_model_group);
  visual_tools.trigger();
  //visual_tools.prompt("next step");

  // When done with the path constraint be sure to clear it.
  move_group.clearPathConstraints();

  // visual_tools.prompt("next step");

  // Moving to a pose goal
  // ^^^^^^^^^^^^^^^^^^^^^
  //
  // Moving to a pose goal is similar to the step above
  // except we now use the move() function. Note that
  // the pose goal we had set earlier is still active
  // and so the robot will try to move to that goal. We will
  // not use that function in this tutorial since it is
  // a blocking function and requires a controller to be active
  // and report success on execution of a trajectory.

  ///* Uncomment below line when working with a real robot
  ///* move_group.move()


  // Now, let's remove the collision object from the world.
  //ROS_INFO_NAMED("tutorial", "Remove the object from the world");
  //std::vector<std::string> object_ids;
  //object_ids.push_back(collision_object.id);
  //planning_scene_interface.removeCollisionObjects(object_ids);

  // Show text in Rviz of status
  //visual_tools.publishText(text_pose, "Object removed", rvt::WHITE, rvt::XLARGE);
  //visual_tools.trigger();

  // Sleep to give Rviz time to show the object is no longer there.
  //ros::Duration(1.0).sleep();
*/







  //End the node
  ros::shutdown();
  return 0;
}
