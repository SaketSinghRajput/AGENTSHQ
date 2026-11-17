---
name: robotics-autonomy
description: "ROS 2 / PX4 / ArduPilot development with simulation-first testing. Use for drones, rovers, swarms."
---

# Robotics Autonomy

- Simulation first: PX4 SITL + Gazebo; record rosbags for every test.
- Nodes small and typed; QoS chosen deliberately; params in YAML.
- Failsafe matrix: link loss, GPS loss, low battery, geofence, sensor failure → defined behaviour, tested in SITL.
- Swarm: unique IDs, collision avoidance, comms budget, leader loss handling.
- Field tests need a written test card and founder approval; follow local drone rules (DGCA Digital Sky in India).
