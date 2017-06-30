#Set up some parameters
#Most are in mm
import os
from BoardBuilder.BoardBuilder import BoardBuilder

import sys
'''
parser.add_argument('-j', '--json', type=str, default='', required=True,
                    help="JSON file to load.  Raw data download from keyboard-layout-editor.com.")
parser.add_argument('-o', '--output_dir', type=str, default='.',
                    help="Directory into which the resulting .scad files will be generated.")
parser.add_argument('-s', '--stabs', choices=['both', 'cherry', 'costar'], default='both',
                    help="Specify the style of stabilizers to generate.")
parser.add_argument('-hp', '--horizontal_pad', type=float, default=0.0, help="Horizontal padding per side.")
parser.add_argument('-vp', '--vertical_pad', type=float, default=0.0, help="Vertical padding per side.")
parser.add_argument('-c', '--corner_radius', type=float, default=0.0, help="Corner radius.")
parser.add_argument('-n', '--num_holes', type=int, default=0, help="Number of screw holes.")
parser.add_argument('-hd', '--hole_diameter', type=float, default=0.0, help="Screw hole diameter.")
parser.add_argument('-sp', '--show_points', action="store_true",
                    help="Debug aid.  Add floating red points for key space rectangles.")
'''

#Get the current directory
file_directory = os.path.dirname(os.path.realpath(__file__))

#Builder script path
script_module = "BoardBuilder"
script_name = "BoardBuilder.py"
script_path = os.path.join(file_directory, '..', script_module, script_name)


layout_name = "numpad-layout.json"

#Set up the parameters
layout_path = os.path.join(file_directory, layout_name)
stabilizers = "costar"
horizontal_padding = '15'
vertical_padding = '45,15'
corner_radius = 10
screw_count = 4
screw_diameter = 3
output_dir = '.'

#Build the board
board = BoardBuilder(layout_path, horizontal_padding, vertical_padding, corner_radius, screw_count, screw_diameter, False, stabilizers)
board.render_top_plate(output_dir)
board.render_bottom_plate(output_dir)
board.render_mid_layers(output_dir)

