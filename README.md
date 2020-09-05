# 踩坑指南

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## 第一次报错
    RenderFlex children have non-zero flex but incoming height constraints are unbounded.
    在Flutter的ListView的子View中，你可以在Row中使用Expanded填充水平方向的剩余空间，而无法在Column中使用Expanded填充垂直方向的剩余空间。

## 关于图片是否能正确显示的回调
```
    var reslove = _img.image.resolve(ImageConfiguration.empty);
    reslove.addListener(ImageStreamListener((_, __) {
    }, onError: (dynamic exception, StackTrace stacktrace) {
      //加载失败
      setState(() {
        _img = Image.asset(
          widget.defalutImg,
          width: widget.w,
          height: widget.h,
        );
      });
    }));

```
