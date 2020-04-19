.class public Lus/zoom/androidlib/widget/ZMVerticalImageTextButton;
.super Lus/zoom/androidlib/widget/ZMImageTextButton;
.source "ZMVerticalImageTextButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/ZMImageTextButton;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-direct {p0}, Lus/zoom/androidlib/widget/ZMVerticalImageTextButton;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lus/zoom/androidlib/widget/ZMImageTextButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    invoke-direct {p0}, Lus/zoom/androidlib/widget/ZMVerticalImageTextButton;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/androidlib/widget/ZMImageTextButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 11
    invoke-direct {p0}, Lus/zoom/androidlib/widget/ZMVerticalImageTextButton;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x1

    .line 25
    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/ZMVerticalImageTextButton;->setImageTextOrientation(I)V

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/ZMVerticalImageTextButton;->setBackgroundResource(I)V

    .line 27
    invoke-virtual {p0, v0, v0, v0, v0}, Lus/zoom/androidlib/widget/ZMVerticalImageTextButton;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public setImageTextOrientation(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 34
    invoke-super {p0, p1}, Lus/zoom/androidlib/widget/ZMImageTextButton;->setImageTextOrientation(I)V

    return-void

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "VERTICAL is supported only."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
