#include <ros/ros.h>
#include <pcl/point_cloud.h>
#include <pcl_conversions/pcl_conversions.h>
#include <sensor_msgs/PointCloud2.h>
#include <pcl/ModelCoefficients.h>
#include <pcl/io/pcd_io.h>
#include <pcl/point_types.h>
#include <pcl/sample_consensus/method_types.h>
#include <pcl/sample_consensus/model_types.h>
#include <pcl/filters/passthrough.h>
#include <pcl/filters/project_inliers.h>
#include <pcl/segmentation/sac_segmentation.h>
#include <pcl/filters/extract_indices.h>
#include <pcl/surface/convex_hull.h>
int main	(int	argc,	char	**argv)
{
	ros::init	(argc,	argv,	"pcl_create");
	ros::NodeHandle	nh;
	ros::Publisher	pcl_pub	=	nh.advertise<sensor_msgs::PointCloud2>	("pcl_output",	1);
	//pcl::PointCloud<pcl::PointXYZ>	cloud;
	pcl::PointCloud<pcl::PointXYZ>	cloud_segmented;
        pcl::PointCloud<pcl::PointXYZ>::Ptr cloud (new pcl::PointCloud<pcl::PointXYZ>);
        //pcl::PointCloud<pcl::PointXYZ>::Ptr cloud (new pcl::PointCloud<pcl::PointXYZ>), cloud_filtered (new pcl::PointCloud<pcl::PointXYZ>), cloud_projected (new pcl::PointCloud<pcl::PointXYZ>);
	sensor_msgs::PointCloud2	output;
	//	Fill	in	the	cloud	data
	cloud->width	=	4;
	cloud->height	=	1;
	cloud->points.resize(cloud->width	*	cloud->height);
	//for	(size_t	i	=	0;	i	<	cloud->points.size();	++i)
	//{
		cloud->points[0].x = 0.5;
		cloud->points[0].y = 0.5;
		cloud->points[0].z = 0;
	//}
		cloud->points[1].x = 1.5;
		cloud->points[1].y = 1.5;
		cloud->points[1].z = 0;
		
		cloud->points[2].x = 3.5;
		cloud->points[2].y = 3.5;
		cloud->points[2].z = 0;

		cloud->points[3].x = 2.5;
		cloud->points[3].y = 0;
		cloud->points[3].z = 0;
		//cloud->points[3].x = 0.5;
		//cloud->points[3].y = 0.5;
		//cloud->points[3].z = 0;
		

	//Convert	the	cloud	to	ROS	message

        pcl::ModelCoefficients::Ptr coefficients (new pcl::ModelCoefficients);
        pcl::PointIndices::Ptr inliers (new pcl::PointIndices);
        pcl::SACSegmentation<pcl::PointXYZ> seg;
        // Optional
        seg.setOptimizeCoefficients (true);
        // Mandatory
        seg.setModelType (pcl::SACMODEL_PLANE);
        seg.setMethodType (pcl::SAC_RANSAC);
        seg.setDistanceThreshold (0.01);
        seg.setInputCloud (cloud);
        seg.segment (*inliers, *coefficients);
std::cerr << "Model coefficients: " << coefficients->values[0] << " " 
                                      << coefficients->values[1] << " "
                                      << coefficients->values[2] << " " 
                                      << coefficients->values[3] << std::endl;



       
       pcl::PointCloud<pcl::PointXYZ>::Ptr cloud_projected (new pcl::PointCloud<pcl::PointXYZ>);
  	pcl::ProjectInliers<pcl::PointXYZ> proj;
  	proj.setModelType (pcl::SACMODEL_PLANE);
  	proj.setInputCloud (cloud);
  	proj.setIndices (inliers);
  	proj.setModelCoefficients (coefficients);
  	proj.filter (*cloud_projected);
  	
	pcl::PointCloud<pcl::PointXYZ>::Ptr cloud_hull (new pcl::PointCloud<pcl::PointXYZ>);
  	pcl::ConvexHull<pcl::PointXYZ> chull;
	chull.setDimension(2);
  	chull.setInputCloud (cloud_projected);
	chull.setDimension(2);
  	chull.reconstruct (*cloud_hull);

	pcl::toROSMsg(*cloud_hull,output);
	output.header.frame_id	=	"odom";
	ros::Rate	loop_rate(1);

	while	(ros::ok())
	{
					pcl_pub.publish(output);
					//pcl_pub.publish(output);
					ros::spinOnce();
					loop_rate.sleep();
	}
	return	0;
}
