.class public Lus/zoom/androidlib/widget/ZMPopupWindow;
.super Landroid/widget/PopupWindow;
.source "ZMPopupWindow.java"


# instance fields
.field private mbDismissOnTouchOutside:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/ZMPopupWindow;->mbDismissOnTouchOutside:Z

    .line 17
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMPopupWindow;->init()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/PopupWindow;-><init>(II)V

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/ZMPopupWindow;->mbDismissOnTouchOutside:Z

    .line 43
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMPopupWindow;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/ZMPopupWindow;->mbDismissOnTouchOutside:Z

    .line 38
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMPopupWindow;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/ZMPopupWindow;->mbDismissOnTouchOutside:Z

    .line 33
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMPopupWindow;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/ZMPopupWindow;->mbDismissOnTouchOutside:Z

    .line 28
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMPopupWindow;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/ZMPopupWindow;->mbDismissOnTouchOutside:Z

    .line 23
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMPopupWindow;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/ZMPopupWindow;->mbDismissOnTouchOutside:Z

    .line 59
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMPopupWindow;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/ZMPopupWindow;->mbDismissOnTouchOutside:Z

    .line 54
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMPopupWindow;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/ZMPopupWindow;->mbDismissOnTouchOutside:Z

    .line 49
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMPopupWindow;->init()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/androidlib/widget/ZMPopupWindow;)Z
    .locals 0

    .line 11
    iget-boolean p0, p0, Lus/zoom/androidlib/widget/ZMPopupWindow;->mbDismissOnTouchOutside:Z

    return p0
.end method

.method static synthetic access$100(Lus/zoom/androidlib/widget/ZMPopupWindow;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/ZMPopupWindow;->isOutside(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private isOutside(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 88
    :cond_0
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 93
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 95
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    .line 96
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v4, 0x0

    cmpg-float v5, v2, v4

    if-ltz v5, :cond_2

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_2

    cmpg-float v2, p1, v4

    if-ltz v2, :cond_2

    cmpl-float p1, p1, v1

    if-lez p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method


# virtual methods
.method protected init()V
    .locals 1

    const/4 v0, 0x1

    .line 63
    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/ZMPopupWindow;->setOutsideTouchable(Z)V

    .line 64
    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/ZMPopupWindow;->setFocusable(Z)V

    .line 65
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/ZMPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    new-instance v0, Lus/zoom/androidlib/widget/ZMPopupWindow$1;

    invoke-direct {v0, p0}, Lus/zoom/androidlib/widget/ZMPopupWindow$1;-><init>(Lus/zoom/androidlib/widget/ZMPopupWindow;)V

    invoke-virtual {p0, v0}, Lus/zoom/androidlib/widget/ZMPopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setDismissOnTouchOutside(Z)V
    .locals 0

    .line 81
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/ZMPopupWindow;->mbDismissOnTouchOutside:Z

    return-void
.end method
