#Set up some parameters
#Most are in mm
import os
from BoardBuilder import BoardBuilder

#Get the current directory and files
file_directory = os.path.dirname(os.path.realpath(__file__))
layout_name = "numpad-layout_fn.json"
layout_path = os.path.join(file_directory, layout_name)
output_dir = './out_cpw/'
if not os.path.exists(output_dir):
	os.makedirs(output_dir)

#Set up the parameters
stabilizers = "costar"
horizontal_padding = '8'
vertical_padding = '8,8'
corner_radius = 6
screw_count = 0
screw_diameter = 5
screw_padding = 6
screw_side_count = 6

#Build the board
board = BoardBuilder(layout_path, horizontal_padding, vertical_padding, corner_radius, screw_count, screw_diameter, False, stabilizers, screw_padding, screw_side_count)
board.render_mid_layers(output_dir)

#The top and bottom have different holes for the screws
screw_diameter_face_bottom = 3
screw_side_count_face_bottom = -1
board = BoardBuilder(layout_path, horizontal_padding, vertical_padding, corner_radius, screw_count, screw_diameter_face_bottom, False, stabilizers, screw_padding, screw_side_count_face_bottom)
board.render_top_plate(output_dir)
board.render_bottom_plate(output_dir)

