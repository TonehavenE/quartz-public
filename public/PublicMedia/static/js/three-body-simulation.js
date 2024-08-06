let bodies = [];
let G = 0.005; // Gravitational constant for simplicity

function setup() {
	createCanvas(windowWidth, windowHeight);
	noStroke();
	// Initialize bodies
	bodies.push(new Body(createVector(width / 2, height / 2), createVector(0, 1), 5000, color(255, 0, 0)));
	bodies.push(new Body(createVector(width / 2 + 100, height / 2), createVector(0, -1.5), 100, color(0, 255, 0)));
	bodies.push(new Body(createVector(width / 2 - 150, height / 2), createVector(1, 0), 60, color(0, 0, 255)));
	//bodies.push(new Body(createVector(400, 400), createVector(0.1, -0.6), 100, color(255, 0, 0)))
	//bodies.push(new Body(createVector(330, 400), createVector(-0.3, 0.27), 25, color(0, 255, 0)))
	//bodies.push(new Body(createVector(260, 400), createVector(0, 0.192), 40, color(0, 0, 255)))
}

function draw() {
	background(0);
	for (let i = 0; i < bodies.length; i++) {
		for (let j = i + 1; j < bodies.length; j++) {
			let force = bodies[i].attract(bodies[j]);
			stroke(255);
			line(bodies[i].position.x, bodies[i].position.y, bodies[j].position.x, bodies[j].position.y);
			bodies[j].applyForce(force);
			bodies[i].applyForce(force.mult(-1));
		}
	}

	for (let body of bodies) {
		body.update();
		body.display();
	}
}

class Body {
	constructor(position, velocity, mass, color) {
		this.position = position;
		this.velocity = velocity;
		this.acceleration = createVector(0, 0);
		this.mass = mass;
		this.color = color;
		this.radius = (this.mass ** 0.5) / 3
	}

	attract(other) {
		let force = p5.Vector.sub(this.position, other.position);
		let distance = force.mag();
		force.normalize();
		let strength = (G * this.mass * other.mass) / (distance * distance);
		force.mult(strength);
		return force;
	}

	applyForce(force) {
		let a = p5.Vector.div(force, this.mass);
		this.acceleration.add(a);
	}

	update() {
		this.velocity.add(this.acceleration);
		this.position.add(this.velocity);
		this.acceleration.mult(0);
	}

	display() {
		fill(this.color);
		ellipse(this.position.x, this.position.y, this.radius * 2, this.radius * 2);
	}
}
