

difference() {
	difference() {
		translate(v = [0, 142.2500000000, 0]) {
			mirror(v = [0, 1, 0]) {
				difference() {
					square(size = [100.2000000000, 142.2500000000]);
					translate(v = [12, 35, 0]) {
						translate(v = [-0.0000000000, -0.0000000000, 0]) {
							translate(v = [9.5250000000, 9.5250000000, 0]) {
								square(center = true, size = [14, 14]);
							}
							translate(v = [28.5750000000, 9.5250000000, 0]) {
								square(center = true, size = [14, 14]);
							}
							translate(v = [47.6250000000, 9.5250000000, 0]) {
								square(center = true, size = [14, 14]);
							}
							translate(v = [66.6750000000, 9.5250000000, 0]) {
								square(center = true, size = [14, 14]);
							}
							translate(v = [9.5250000000, 28.5750000000, 0]) {
								square(center = true, size = [14, 14]);
							}
							translate(v = [28.5750000000, 28.5750000000, 0]) {
								square(center = true, size = [14, 14]);
							}
							translate(v = [47.6250000000, 28.5750000000, 0]) {
								square(center = true, size = [14, 14]);
							}
							translate(v = [66.6750000000, 38.1000000000, 0]) {
								rotate(a = [0, 0, 90]) {
									union() {
										square(center = true, size = [14, 14]);
										mirror(v = [0, 1, 0]) {
											union() {
												translate(v = [11.9000000000, 0, 0]) {
													translate(v = [-1.6000000000, -7.7500000000, 0]) {
														square(size = [3.3000000000, 14]);
													}
												}
												translate(v = [-11.9000000000, 0, 0]) {
													mirror(v = [1, 0, 0]) {
														translate(v = [-1.6000000000, -7.7500000000, 0]) {
															square(size = [3.3000000000, 14]);
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [9.5250000000, 47.6250000000, 0]) {
								square(center = true, size = [14, 14]);
							}
							translate(v = [28.5750000000, 47.6250000000, 0]) {
								square(center = true, size = [14, 14]);
							}
							translate(v = [47.6250000000, 47.6250000000, 0]) {
								square(center = true, size = [14, 14]);
							}
							translate(v = [9.5250000000, 66.6750000000, 0]) {
								square(center = true, size = [14, 14]);
							}
							translate(v = [28.5750000000, 66.6750000000, 0]) {
								square(center = true, size = [14, 14]);
							}
							translate(v = [47.6250000000, 66.6750000000, 0]) {
								square(center = true, size = [14, 14]);
							}
							translate(v = [66.6750000000, 76.2000000000, 0]) {
								rotate(a = [0, 0, 90]) {
									union() {
										square(center = true, size = [14, 14]);
										mirror(v = [0, 1, 0]) {
											union() {
												translate(v = [11.9000000000, 0, 0]) {
													translate(v = [-1.6000000000, -7.7500000000, 0]) {
														square(size = [3.3000000000, 14]);
													}
												}
												translate(v = [-11.9000000000, 0, 0]) {
													mirror(v = [1, 0, 0]) {
														translate(v = [-1.6000000000, -7.7500000000, 0]) {
															square(size = [3.3000000000, 14]);
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [19.0500000000, 85.7250000000, 0]) {
								union() {
									square(center = true, size = [14, 14]);
									mirror(v = [0, 1, 0]) {
										union() {
											translate(v = [11.9000000000, 0, 0]) {
												translate(v = [-1.6000000000, -7.7500000000, 0]) {
													square(size = [3.3000000000, 14]);
												}
											}
											translate(v = [-11.9000000000, 0, 0]) {
												mirror(v = [1, 0, 0]) {
													translate(v = [-1.6000000000, -7.7500000000, 0]) {
														square(size = [3.3000000000, 14]);
													}
												}
											}
										}
									}
								}
							}
							translate(v = [47.6250000000, 85.7250000000, 0]) {
								square(center = true, size = [14, 14]);
							}
						}
					}
				}
			}
		}
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