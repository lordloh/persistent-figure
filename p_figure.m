function [ fig_h ] = p_figure(im,varargin)
%P_FIGURE draws images in a persistant figure window.
%   p_figure is used to keep the location and size of the figure window
%   fixed across various redraws. This function is a wrapper around figure
%   and imshow.
%
% Bharath Bhushan Lohray

p=inputParser;
persistent f_pos margin;
addRequired(p,'im');
addOptional(p,'f_pos',[]);
addOptional(p,'fig_h',[]);
addOptional(p,'margin',margin);
parse(p,im,varargin{:});
f_pos=p.Results.f_pos;
margin=p.Results.margin;
fig_h=p.Results.fig_h;
if (isempty(fig_h) || ~isvalid(fig_h))
    fig_h=figure('Visible','off');
end

if (~isempty(f_pos))
    fig_h.Position=f_pos;
else
    f_pos=fig_h.Position;
end

if isempty(fig_h.CurrentAxes)
    a_h=axes();
else
    a_h=fig_h.CurrentAxes;
end

if (isempty(margin))
    margin=a_h.Position;
else
   a_h.Position=margin; 
end

fig_h.Visible='off';
imshow(p.Results.im);
fig_h.Position=f_pos;
fig_h.Visible='on';
drawnow;
end

