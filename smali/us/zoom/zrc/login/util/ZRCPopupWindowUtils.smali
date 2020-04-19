.class public Lus/zoom/zrc/login/util/ZRCPopupWindowUtils;
.super Ljava/lang/Object;
.source "ZRCPopupWindowUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;II)V
    .locals 0

    .line 111
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 112
    invoke-static {p0}, Lus/zoom/zrc/utils/PolycomTrioUtils;->setImmersiveModeForPolycomTrio(Landroid/widget/PopupWindow;)V

    return-void
.end method

.method public static showAtBottom(Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 1
    .param p0    # Landroid/widget/PopupWindow;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 39
    invoke-static {p0, p1, v0, v0}, Lus/zoom/zrc/login/util/ZRCPopupWindowUtils;->showAtBottom(Landroid/widget/PopupWindow;Landroid/view/View;II)V

    return-void
.end method

.method public static showAtBottom(Landroid/widget/PopupWindow;Landroid/view/View;II)V
    .locals 6
    .param p0    # Landroid/widget/PopupWindow;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x2

    .line 59
    new-array v1, v0, [I

    .line 60
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 61
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    const/4 v3, 0x0

    .line 64
    aget v4, v1, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/2addr v5, v0

    add-int/2addr v4, v5

    .line 65
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/2addr v5, v0

    sub-int/2addr v4, v5

    add-int/2addr v4, p2

    const/4 p2, 0x1

    .line 66
    aget p2, v1, p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr p2, v0

    add-int/2addr p2, p3

    .line 69
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result p3

    sub-int/2addr p3, p2

    .line 70
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 71
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/high16 v2, -0x80000000

    .line 72
    invoke-static {p3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 71
    invoke-virtual {v0, v1, p3}, Landroid/view/View;->measure(II)V

    .line 73
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/16 p3, 0x30

    .line 75
    invoke-virtual {p0, p1, p3, v4, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 76
    invoke-static {p0}, Lus/zoom/zrc/utils/PolycomTrioUtils;->setImmersiveModeForPolycomTrio(Landroid/widget/PopupWindow;)V

    return-void
.end method

.method public static showAtBottomAlignRight(Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 3
    .param p0    # Landroid/widget/PopupWindow;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x2

    .line 43
    new-array v0, v0, [I

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 45
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    const/4 v1, 0x0

    .line 48
    aget v1, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x1

    .line 49
    aget v0, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    .line 51
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    const/16 v2, 0x33

    .line 54
    invoke-virtual {p0, p1, v2, v1, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 55
    invoke-static {p0}, Lus/zoom/zrc/utils/PolycomTrioUtils;->setImmersiveModeForPolycomTrio(Landroid/widget/PopupWindow;)V

    return-void
.end method

.method public static showAtBottomWithWrapHeight(Landroid/widget/PopupWindow;Landroid/view/View;II)V
    .locals 5
    .param p0    # Landroid/widget/PopupWindow;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x2

    .line 80
    new-array v1, v0, [I

    .line 81
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 82
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    const/4 v3, 0x0

    .line 85
    aget v3, v1, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/2addr v4, v0

    add-int/2addr v3, v4

    .line 86
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/2addr v2, v0

    sub-int/2addr v3, v2

    add-int/2addr v3, p2

    const/4 p2, 0x1

    .line 87
    aget p2, v1, p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr p2, v0

    add-int/2addr p2, p3

    const/16 p3, 0x30

    .line 89
    invoke-virtual {p0, p1, p3, v3, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 90
    invoke-static {p0}, Lus/zoom/zrc/utils/PolycomTrioUtils;->setImmersiveModeForPolycomTrio(Landroid/widget/PopupWindow;)V

    return-void
.end method

.method public static showAtTop(Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 1
    .param p0    # Landroid/widget/PopupWindow;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 15
    invoke-static {p0, p1, v0, v0}, Lus/zoom/zrc/login/util/ZRCPopupWindowUtils;->showAtTop(Landroid/widget/PopupWindow;Landroid/view/View;II)V

    return-void
.end method

.method public static showAtTop(Landroid/widget/PopupWindow;Landroid/view/View;II)V
    .locals 5
    .param p0    # Landroid/widget/PopupWindow;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x2

    .line 19
    new-array v1, v0, [I

    .line 20
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 21
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    const/4 v3, 0x0

    .line 24
    aget v3, v1, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/2addr v4, v0

    add-int/2addr v3, v4

    .line 25
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/2addr v4, v0

    sub-int/2addr v3, v4

    add-int/2addr v3, p2

    .line 26
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result p2

    const/4 v0, 0x1

    aget v0, v1, v0

    sub-int/2addr p2, v0

    add-int/2addr p2, p3

    const/16 p3, 0x50

    .line 34
    invoke-virtual {p0, p1, p3, v3, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 35
    invoke-static {p0}, Lus/zoom/zrc/utils/PolycomTrioUtils;->setImmersiveModeForPolycomTrio(Landroid/widget/PopupWindow;)V

    return-void
.end method

.method public static updateArrowToCenterHorizontal(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 94
    new-instance v0, Lus/zoom/zrc/login/util/ZRCPopupWindowUtils$1;

    invoke-direct {v0, p0, p1}, Lus/zoom/zrc/login/util/ZRCPopupWindowUtils$1;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
