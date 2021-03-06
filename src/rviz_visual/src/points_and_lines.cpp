#include <ros/ros.h>
#include <visualization_msgs/Marker.h>
#include <sensor_msgs/Imu.h>
#include <cmath>
#include <iostream>
  float f = 0.0;
 float small = 0.0;
class SubscribeAndPublish
{
public:
  SubscribeAndPublish()
  {
    //Topic you want to publish
    marker_pub = marker_pub = n.advertise<visualization_msgs::Marker>("visualization_marker", 10);
    //Topic you want to subscribe
    sub = n.subscribe("raw_imu", 1, &SubscribeAndPublish::callback, this);
  }

  void callback(const sensor_msgs::Imu& msg)
  {
    std::cout << msg.orientation.z << std::endl;
    visualization_msgs::Marker points, line_strip, line_list;
    points.header.frame_id = line_strip.header.frame_id = line_list.header.frame_id = "/world";
    points.header.stamp = line_strip.header.stamp = line_list.header.stamp = ros::Time::now();
    points.ns = line_strip.ns = line_list.ns = "points_and_lines";
    points.action = line_strip.action = line_list.action = visualization_msgs::Marker::ADD;
    points.pose.orientation.w = line_strip.pose.orientation.w = line_list.pose.orientation.w = 1.0;



    points.id = 0;
    line_strip.id = 1;
    line_list.id = 2;



    points.type = visualization_msgs::Marker::POINTS;
    line_strip.type = visualization_msgs::Marker::LINE_STRIP;
    line_list.type = visualization_msgs::Marker::LINE_LIST;



    // POINTS markers use x and y scale for width/height respectively
    points.scale.x = 0.2;
    points.scale.y = 0.2;

    // LINE_STRIP/LINE_LIST markers use only the x component of scale, for the line width
    line_strip.scale.x = 0.1;
    line_list.scale.x = 0.1;



    // Points are green
    points.color.g = 1.0f;
    points.color.a = 1.0;

    // Line strip is blue
    line_strip.color.b = 1.0;
    line_strip.color.a = 1.0;

    // Line list is red
    line_list.color.r = 1.0;
    line_list.color.a = 1.0;

       small = msg.angular_velocity.z;
    if (small > 0 && small != 0) {
	small += 5;
 }
    else if (small <= 0) {
	small -= 5;
    }
    // Create the vertices for the points and lines
    for (uint32_t i = 0; i < 100; ++i)
    {
	
	float y = 0.0;
      if (small < 0)
      y = (-small) * sin(f + i  / 100.0f * 2 * M_PI * small );
      else 
          y = (small) * sin(f + i  / 100.0f * 2 * M_PI * small );
     // float z = 5 * cos(f + i / 100.0f * 2 * M_PI);
      float z = 4;
      geometry_msgs::Point p;
      p.x = (int32_t)i - 50;
      p.y = y;
      p.z = z;

      points.points.push_back(p);
      line_strip.points.push_back(p);

      // The line list needs two points for each line
      line_list.points.push_back(p);
      p.z += 1.0;
      line_list.points.push_back(p);

    }


    marker_pub.publish(points);
    marker_pub.publish(line_strip);
    marker_pub.publish(line_list);



    f += 0.04;
  }

private:
  ros::NodeHandle n; 
  ros::Publisher marker_pub ;
  ros::Subscriber sub ;

};//End of class SubscribeAndPublish



int main( int argc, char** argv )
{
  ros::init(argc, argv, "points_and_lines");

  //ros::Rate r(30);
  SubscribeAndPublish SAPObject;

  ros::spin();
  return 0;


}
