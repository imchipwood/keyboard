

difference() {
	difference() {
		square(size = [100.2000000000, 142.2500000000]);
		union() {
			difference() {
				square(center = true, size = 12);
				translate(v = [6, 6, 0]) {
					circle(r = 6, $fn = 80);
				}
			}
			translate(v = [100.2000000000, 0, 0]) {
				mirror(v = [1, 0, 0]) {
					difference() {
						square(center = true, size = 12);
						translate(v = [6, 6, 0]) {
							circle(r = 6, $fn = 80);
						}
					}
				}
			}
			translate(v = [100.2000000000, 142.2500000000, 0]) {
				mirror(v = [1, 1, 0]) {
					difference() {
						square(center = true, size = 12);
						translate(v = [6, 6, 0]) {
							circle(r = 6, $fn = 80);
						}
					}
				}
			}
			translate(v = [0, 142.2500000000, 0]) {
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
	}
	union() {
		translate(v = [6, 6, 0]) {
			circle(r = 1.5000000000, $fn = 20);
		}
		translate(v = [50.1000000000, 6, 0]) {
			circle(r = 1.5000000000, $fn = 20);
		}
		translate(v = [94.2000000000, 6, 0]) {
			circle(r = 1.5000000000, $fn = 20);
		}
		translate(v = [6, 136.2500000000, 0]) {
			circle(r = 1.5000000000, $fn = 20);
		}
		translate(v = [50.1000000000, 136.2500000000, 0]) {
			circle(r = 1.5000000000, $fn = 20);
		}
		translate(v = [94.2000000000, 136.2500000000, 0]) {
			circle(r = 1.5000000000, $fn = 20);
		}
	}
}