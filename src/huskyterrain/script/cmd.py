#!/usr/bin/env python
import rospy
from std_msgs.msg import String
from geometry_msgs.msg import Twist
from geometry_msgs.msg import Pose
from nav_msgs.msg import Odometry
import threading
class Polygon(object):
	def __init__(self):
		self.position = Odometry()
		self.control = Twist()
		self.vertice = Pose()
		self.vertice.x = 0.5
		self.vertice.y = 0.5
		self.state = 0
		self.tmp = 0
		self.t1 = threading.Thread(target=self.f1,name='t1')
		self.t2 = threading.Thread(target=self.f2,name='t2')
		self.threadC = threading.Condition()		
  		self.pub = rospy.Publisher('cmd_vel', Twist, queue_size = 1)
  		rospy.Subscriber('/ground_truth/state', Odometry, self.cbtrans)
		self.t1.start()
		self.t2.start()
	def Ru_state(self): #Thread
		#self.threadC.acquire()
		print self.state
		if (self.state == 0):
			cmd = Twist()
	        	cmd.linear.x = 0.5  
	        	cmd.linear.y = 0.0  
	        	cmd.linear.z = 0.0  
	        	self.pub.publish(cmd)
		elif (self.state == 1):
			cmd = Twist()
	        	cmd.linear.x = 0.0  
	        	cmd.linear.y = 0.0  
	        	cmd.angular.z = 0.3
	        	self.pub.publish(cmd) 
		elif (self.state == 2):
			cmd = Twist()
	        	cmd.linear.x = 0.5 
	        	cmd.linear.y = 0.0  
	        	cmd.angular.z = 0.0 
	        	self.pub.publish(cmd) 
		elif (self.state == 3):
			cmd = Twist()
	        	cmd.linear.x = 0.0 
	        	cmd.linear.y = 0.0  
	        	cmd.angular.z = 0.3 
	        	self.pub.publish(cmd)
		#self.threadC.acquire() 
	def cbtrans(self,msg):# Thread
			#self.threadC.acquire()
		        print self.state
			if (msg.pose.pose.position.x > 5.0): #  > world coor. - vertice.x
				self.state = 1
			if (msg.pose.pose.orientation.w < 0.7):
				self.state = 2
			if (msg.pose.pose.position.y > 5.0): # 
				self.state = 3	
			if (msg.pose.pose.orientation.w < 0.0):
				self.state = 0	
			#self.threadC.release()	
	def state(self):
			if(msg.pose.pose.position.x > 	
			
	def f1(self):
		self.threadC.acquire()
		self.threadC.wait()
		self.threadC.release()
	def f2(self):
		self.threadC.acquire()
		self.threadC.wait()
		self.threadC.release()

		  
if __name__ == '__main__':
  rospy.init_node('trans', anonymous=True)  
  foo = Polygon()
  rospy.spin()
