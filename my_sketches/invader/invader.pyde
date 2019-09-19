

    
def setup():
    size(500,500)
    background(200)
    loadPixels()
    loadPixels()
    
    def to2dgrid(an_arr):
        my_rows = []
        for i in range(0,500):
            my_rows.append(an_arr[i*500:i*500 + 500])
        #creating an array 5x5 arrays. Each 5x5 array represents a different 5x5 square on the image
        threed_array = []
        for i in range(0,100):
            for j in range(100):
                #these two coordinates define the pixel location of the upper left corner of the 5 x 5 square you are dealing with
                upper_left = [i*5, j*5]
                my_box = []
                for k in range(0,5):
                    my_box.append(my_rows[upper_left[0]+k][upper_left[1]: upper_left[1] + 5])
                threed_array.append(my_box)   
        return threed_array
        
    
    out = to2dgrid(pixels)
    
    def invader(fivebyfive):
        #needs finishing so that it actually defines a vector
        my_color = color(0,100,0)
        for i in range(0,5):
            for j in range(0,5):
                fivebyfive[i][j] = my_color
    
    
                
                
            
                
    
        

# def draw(2darray):
#     return("nuttin")

#     # my_rand = random(0,5)
#     # my_color = color(0,200,0)
#     # 2darry[my_rand] = [my_color, my_color, my_color, my_color, my_color]
#     # return(2d_array)

# updatePixels()
    
