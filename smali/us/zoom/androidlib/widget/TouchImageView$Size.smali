.class Lus/zoom/androidlib/widget/TouchImageView$Size;
.super Ljava/lang/Object;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/widget/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Size"
.end annotation


# instance fields
.field height:I

.field width:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lus/zoom/androidlib/widget/TouchImageView$Size;->width:I

    .line 42
    iput v0, p0, Lus/zoom/androidlib/widget/TouchImageView$Size;->height:I

    return-void
.end method
