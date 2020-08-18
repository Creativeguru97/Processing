JSONArray data;
JSONArray coordinates;

void setup(){
  data = loadJSONArray("data/data.json");
  coordinates = new JSONArray();
  
  size(600, 600);
  
  for (int i = 0; i < data.size(); i++) {
    JSONObject eachStrings = data.getJSONObject(i); 
    int ellipseX = eachStrings.getInt("x");
    int ellipseY = eachStrings.getInt("y");
    
    ellipse(ellipseX, ellipseY, 20, 20);
  }
}
