# CardFlipper

App made for the mobile team challenge at CloudWalk

## About

This project uses model_viewer_plus package: https://pub.dev/packages/model_viewer_plus, it renders the google's model_viewer web component.

It renders a 3D model credit card, which is a .glb file.
The original 3D project was downloaded from sketchfab: https://sketchfab.com/3d-models/credit-card-4c4117d766f342cc9e0fa3d79e9de654
I modified it, including the required animations for flipping the card, rendering the used .glb file.
The widget that renders the .glb file is wrapped with a gesture detector, which identifies where the user touches the screen, and assigns the correct animation to the widget.

## TO-DO
Unfortunately, I couldn't find a way to make the rendering widget dynamic, triggering the assigned animation when the user touches the screen. The only way to play animations, by now, is to assign one and set autoplay: true.
