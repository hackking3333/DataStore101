import pygame, sys
import math, random
from pygame.locals import QUIT
import time

starttim = time.time()

pygame.init()
screen = pygame.display.set_mode([400, 300])
pygame.display.set_caption("Fruit Shooting Game")

dispicon = pygame.image.load("./Assets/apple.png")
pygame.display.set_icon(dispicon)

appleobj = []

loopis = False

dsp = pygame.display.get_window_size()
displayx = dsp[0]

displayy = dsp[1]

randomx = random.randint(0, displayx)
randomy = random.randint(0, displayy)

screen.fill((0, 0, 0))
newapp = screen.blit(dispicon, (randomx, randomy))

while True:


    pygame.display.update()

    """
    if math.floor(timemodus % 5) == 0:
        if (not loopis):
            loopis = True
            dsp = pygame.display.get_window_size()
            displayx = dsp[0]

            displayy = dsp[1]

            randomx = random.randint(0, displayx)

            screen.fill((0, 0, 0))

            for i in appleobj:
                ix = i.x
                iy = i.y
                appleobj.remove(i)
                if iy + 2 <= displayy:
                    newapp = screen.blit(dispicon, (ix, iy + 2))
                    appleobj.append(newapp)

            newapp = screen.blit(dispicon, (randomx, 0))
            appleobj.append(newapp)
            pygame.display.update()
    else:
        loopis = False
    """