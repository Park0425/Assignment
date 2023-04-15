/**
 * Bouncing Ball with Vectors 
 * by Daniel Shiffman.  
 * 
 * Demonstration of using vectors to control motion 
 * of a body. This example is not object-oriented
 * See AccelerationWithVectors for an example of how 
 * to simulate motion using vectors in an object.
 */
 
PVector location1;  // Location of shape
PVector velocity1;  // Velocity of shape
PVector gravity1;   // Gravity acts at the shape's acceleration

PVector location2;  // Location of shape
PVector velocity2;  // Velocity of shape
PVector gravity2;   // Gravity acts at the shape's acceleration

void setup() {
  size(640,360);
  location1 = new PVector(100,100);
  velocity1 = new PVector(1.5,2.1);
  gravity1 = new PVector(0,0.2);
  
  location2 = new PVector(400,50);
  velocity2 = new PVector(1.5,2.5);
  gravity2 = new PVector(0,0.15);

}

void draw() {
  background(255); // Setting the background color
  
  // Add velocity to the location.
  location1.add(velocity1);
  // Add gravity to velocity
  velocity1.add(gravity1);
  
  // Bounce off edges
  if ((location1.x > width) || (location1.x < 0)) {
    velocity1.x = velocity1.x * -1;
  }
  if (location1.y > height) {
    // We're reducing velocity ever so slightly 
    // when it hits the bottom of the window
    velocity1.y = velocity1.y * -0.95; 
    location1.y = height;
  }

  // Display circle at location vector
  stroke(0,0,255);
  strokeWeight(2);
  fill(204,229,255);
  ellipse(location1.x,location1.y,48,48);
  
  location2.add(velocity2);
  // Add gravity to velocity
  velocity2.add(gravity2);
  
  // Bounce off edges
  if ((location2.x > width) || (location2.x < 0)) {
    velocity2.x = velocity2.x * -1.3;
  }
  if (location2.y > height) {
    // We're reducing velocity ever so slightly 
    // when it hits the bottom of the window
    velocity2.y = velocity2.y * -0.97; 
    location2.y = height;
  }

  // Display circle at location vector
  stroke(255);
  strokeWeight(2);
  fill(255,153,255);
  ellipse(location2.x,location2.y,55,55);
}
