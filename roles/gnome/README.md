# Setup Gnome

## Applications

### Gedit

- https://github.com/maoschanz/gedit-plugin-markdown_preview
  (https://www.linuxuprising.com/2020/02/how-to-add-markdown-support-to-gedit.html)

## Appearance

### GTK3 and Shell theme

#### Arc theme

History

1. The original theme https://github.com/horst3180/arc-theme. Unmaintained since March 2017
2. Original theme fork https://github.com/arc-design/arc-theme. Unmaintained from Mar 7, 2020. Archived from May
   14, 2020.
3. Currently, actively maintained https://github.com/jnsh/arc-theme

- https://github.com/arc-design/arc-theme
- https://github.com/snwh/paper-icon-theme

### Fix Gnome Shell 3.36.2 issue for GPaste

https://github.com/Keruspe/GPaste/issues/307

```css
.system-menu-action {
  -st-icon-style: symbolic;
  border-radius: 32px;
  /* wish we could do 50% */
  padding: 13px;
  color: #d3dae3;
  background-color: #444a58;
  border: 1px solid #2b2e39;
}
.system-menu-action:hover,
.system-menu-action:focus {
  color: #d3dae3;
  background-color: #444a58;
  border: 1px solid #5294e2;
}
.system-menu-action:active {
  background-color: #1b6acb;
  color: #ffffff;
  border-color: #092444;
}
.system-menu-action > StIcon {
  icon-size: 16px;
}
```
