

difference() {
	difference() {
		square(size = [106.2000000000, 155.2500000000]);
		union() {
			difference() {
				square(center = true, size = 20);
				translate(v = [10, 10, 0]) {
					circle(r = 10, $fn = 80);
				}
			}
			translate(v = [106.2000000000, 0, 0]) {
				mirror(v = [1, 0, 0]) {
					difference() {
						square(center = true, size = 20);
						translate(v = [10, 10, 0]) {
							circle(r = 10, $fn = 80);
						}
					}
				}
			}
			translate(v = [106.2000000000, 155.2500000000, 0]) {
				mirror(v = [1, 1, 0]) {
					difference() {
						square(center = true, size = 20);
						translate(v = [10, 10, 0]) {
							circle(r = 10, $fn = 80);
						}
					}
				}
			}
			translate(v = [0, 155.2500000000, 0]) {
				mirror(v = [0, 1, 0]) {
					difference() {
						square(center = true, size = 20);
						translate(v = [10, 10, 0]) {
							circle(r = 10, $fn = 80);
						}
					}
				}
			}
		}
	}
	union() {
		translate(v = [7, 7, 0]) {
			circle(r = 1, $fn = 20);
		}
		translate(v = [99.2000000000, 7, 0]) {
			circle(r = 1, $fn = 20);
		}
		translate(v = [7, 148.2500000000, 0]) {
			circle(r = 1, $fn = 20);
		}
		translate(v = [99.2000000000, 148.2500000000, 0]) {
			circle(r = 1, $fn = 20);
		}
	}
}