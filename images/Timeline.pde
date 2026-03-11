// Dani Rubio | 23 Feb 2026 | Timeline

void setup() {
  size(950,400);
}

void draw() {
  background(#F7B1E8);
  drawRef();

  // Timeline Events (added color parameter)

  histEvent(100,200,"Jan 2002",true,
  "Caitlin Clark is born in Des Moines", #F8C8F0);

  histEvent(230,300,"Nov 2020",false,
  "Debuts for the Iowa Hawkeyes women's basketball team\nand averages over 26 points per game as a freshman", #F4A6E9);

  histEvent(340,200,"Mar 2023",true,
  "Wins National Player of the Year honors after\nleading the nation in scoring", #E889DC);

  histEvent(450,300,"Apr 2023",false,
  "Leads Iowa to the NCAA Championship Game in Dallas", #D96FD0);

  histEvent(560,200,"Feb 2024",true,
  "Becomes NCAA Division I all-time leading scorer\n(men’s and women’s)", #C95BC3);

  histEvent(670,300,"Apr 2024",false,
  "Selected No. 1 overall by the Indiana Fever\nin the 2024 WNBA Draft", #B64AB5);

  histEvent(780,200,"July 2024",true,
  "Named a WNBA All-Star during her rookie season", #9F3CA6);

  histEvent(880,300,"Sept 2024",false,
  "Wins WNBA Rookie of the Year Award", #872F97);
}

void drawRef() {
  textAlign(CENTER);
  textSize(36);
  fill(60);
  text("Caitlin Clark: Timeline",width/2,70);

  textSize(20);
  text("by Dani Rubio",width/2,95);

  strokeWeight(5);
  line(50,250,900,250);

  textSize(16);
  text("2000",50,275);
  text("2025",900,275);

  strokeWeight(2);
  line(50,245,50,255);
  line(900,245,900,255);
}

void histEvent(int x, int y, String title, boolean top, String detail, color boxColor) {

  // Line connecting box to timeline
  if(top) {
    line(x,y+15,x,250);
  } else {
    line(x,y-15,x,250);
  }

  // Event box with pink/purple shades
  rectMode(CENTER);
  fill(boxColor);
  stroke(90);
  strokeWeight(2);
  rect(x,y,110,35,10);

  fill(255); // white text for better contrast
  textSize(14);
  text(title,x,y+5);

  // SHOW DETAIL ONLY WHEN HOVERING OVER DATE BOX
  if (mouseX > x-55 && mouseX < x+55 &&
      mouseY > y-17 && mouseY < y+17) {

    fill(0);
    textSize(16);
    text(detail,width/2,350);
  }
}
