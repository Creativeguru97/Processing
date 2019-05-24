size(600,400);
background(0);
String s = "100, 90, 32, 7, 87";
String[] nums = split(s, ",");//split sentense in s by ","

float[] vals = float(nums);
for(int i = 0; i < nums.length; i++){
  ellipse(i * 50, 200, vals[i], vals[i]);
  //ellipse(i * 50, 200, float(nums[i]), float(nums[i]));
}
