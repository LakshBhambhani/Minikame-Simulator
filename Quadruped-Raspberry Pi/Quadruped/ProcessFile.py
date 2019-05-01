import Quadruped

quad = Quadruped.Quadruped()

filepath = 'Commands.txt'  
with open(filepath) as fp:  
   line = fp.readline()
   cnt = 1
   print("Starting Process File")
   while line:
        #print("Line {}: {}".format(cnt, line.strip()))
        if line.strip() == "moveForward()":
            quad.walkForward()
        if line.strip() == "turnLeft()":
            quad.turnLeft()
        if line.strip() == "turnRight()":
            quad.turnRight
        if line.strip() == "pushUp()":
            quad.pushUp()
        if line.strip() == "jump()":
            quad.jump()
        if line.strip() == "homePos()":
            quad.homePos()
        if line.strip() == "bow()":
            quad.bow()
        if line.strip() == "bendBack()":
            quad.bendBack()
        line = fp.readline()
        cnt += 1