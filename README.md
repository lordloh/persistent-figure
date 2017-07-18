# persistent-figure
A function to persistently draw a MATLAB figure window at the same position on the screen.

### Usage:

```
fig1=p_figure(im)
```
Now move the figure to different screen or resize.

```
fig1=p_figure(im2,'fig_h',fig1)
```

The new image is displayed in the same figure window without changing the position.

### Other Name Value Pairs

*f_pos [x y width height]* - this places the figure at the specified position

The following code uses the second display.

```
fig1=p_figure(im2,'fig_h',fig1,'f_pos',[1920 0 1920 1050])
```

--------

*margin [x y width height]* - the position of the axis in the figure window.

The following code uses the entire figure window without a gray border.

```
fig1=p_figure(im,'fig_h',fig1,'margin',[0 0 1 1])
```
