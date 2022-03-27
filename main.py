import cv2
import mediapipe as mp
import numpy as np
import websockets
import time
import json

face_detection = cv2.CascadeClassifier(cv2.data.haarcascades + 'haarcascade_frontalface_alt2.xml')

webcam = cv2.VideoCapture(1)
mp_hands = mp.solutions.hands
hands = mp_hands.Hands()
mp_draw = mp.solutions.drawing_utils

while True:
    success, imagea = webcam.read()
    image_rgb = cv2.cvtColor(imagea,cv2.COLOR_BGR2RGB)
    image_gray = cv2.cvtColor(imagea,cv2.COLOR_BGR2GRAY)
    image = np.zeros((512,512,3))
    results = hands.process(image_rgb)
    faces_results = face_detection.detectMultiScale(image_gray, scaleFactor=1.5, minNeighbors=5)
    if results.multi_hand_landmarks:
        landmarklist = results.multi_hand_landmarks
        #keypoints = []
        for data_point in landmarklist:
            mp_draw.draw_landmarks(image, data_point)
            mp_draw.draw_landmarks(image, data_point, mp_hands.HAND_CONNECTIONS)

        #keyindexpoint = data_point.landmark[mp_hands.HandLandmark.MIDDLE_FINGER_MCP]
        """
        sendobject = {
            "xposition": keyindexpoint.x,
            "yposition": keyindexpoint.y,
            "zposition": keyindexpoint.z
        }
        """
        #print(landmarklist[0])
        #draw mp_hands.HandLandmark.MIDDLE_FINGER_MCP from landmarklist
        #mp_draw.draw_landmarks(image, landmarklist[0])
        #socketclient.send(json.dumps(sendobject))
        #cv2.imshow("Image",image)
        #cv2.waitKey(1)
    
    #draw faces results
    for (x,y,w,h) in faces_results:
        cv2.rectangle(image, (x,y), (x+w,y+h), (255,0,0), 2)

    cv2.imshow("Image",image)
    cv2.waitKey(1)