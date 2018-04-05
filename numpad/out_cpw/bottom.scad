

difference() {
	square(size = [92.2000000000, 111.2500000000]);
	difference() {
		square(center = true, size = 12);
		translate(v = [6, 6, 0]) {
			circle(r = 6, $fn = 80);
		}
	}
	translate(v = [92.2000000000, 0, 0]) {
		mirror(v = [1, 0, 0]) {
			difference() {
				square(center = true, size = 12);
				translate(v = [6, 6, 0]) {
					circle(r = 6, $fn = 80);
				}
			}
		}
	}
	translate(v = [92.2000000000, 111.2500000000, 0]) {
		mirror(v = [1, 1, 0]) {
			difference() {
				square(center = true, size = 12);
				translate(v = [6, 6, 0]) {
					circle(r = 6, $fn = 80);
				}
			}
		}
	}
	translate(v = [0, 111.2500000000, 0]) {
		mirror(v = [0, 1, 0]) {
			difference() {
				square(center = true, size = 12);
				translate(v = [6, 6, 0]) {
					circle(r = 6, $fn = 80);
				}
			}
		}
	}
}