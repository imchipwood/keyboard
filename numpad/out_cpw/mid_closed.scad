

difference() {
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
	translate(v = [8.0000000000, 8.0000000000, 0]) {
		square(size = [76.2000000000, 95.2500000000]);
	}
	translate(v = [6.0000000000, 6.0000000000, 0]) {
		square(size = [80.2000000000, 99.2500000000]);
	}
}