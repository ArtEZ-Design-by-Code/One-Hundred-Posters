// Define an array of possible answers

String[] answers = {
  "yes", 
  "no", 
  "maybe", 
  "definitely", 
  "doubtful", 
  "ask me again later", 
  "i'm broken"
};

void setup() {
  size(512, 512);
  
  // Generate a random number between zero and the number of answers in the array,
  // and round down
  int randomIndex = floor(random(answers.length));
  
  background(255);
  fill(0);

  translate(width/2, height/2);
  ellipse(0, 0, width - 20, height - 20);

  fill(255);
  textSize(36);
  textAlign(CENTER);
  
  // Select the answer that is number randomIndex in the array 
  text(answers[randomIndex], 0, 0);
} 