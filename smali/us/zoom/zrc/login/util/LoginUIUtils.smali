.class public Lus/zoom/zrc/login/util/LoginUIUtils;
.super Ljava/lang/Object;
.source "LoginUIUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFrameInWindow(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x2

    .line 46
    new-array v0, v0, [I

    .line 47
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    .line 48
    aget v1, v0, v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    const/4 v1, 0x1

    .line 49
    aget v0, v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 50
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 51
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    add-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public static getWindowHiddenFrame(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 30
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 31
    invoke-static {p0, v0}, Lus/zoom/zrc/login/util/LoginUIUtils;->getFrameInWindow(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 33
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 35
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 36
    invoke-virtual {p0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 38
    iget p0, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-ge p0, v0, :cond_0

    .line 39
    iget p0, v1, Landroid/graphics/Rect;->bottom:I

    iput p0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 41
    :cond_0
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    iput p0, p1, Landroid/graphics/Rect;->top:I

    :goto_0
    return-void
.end method

.method public static isFrameVisibleComplete(Landroid/view/View;)Z
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 20
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 21
    invoke-static {p0, v0}, Lus/zoom/zrc/login/util/LoginUIUtils;->getFrameInWindow(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 23
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 24
    invoke-virtual {p0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 26
    iget p0, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static updateStatusBarWhenBatteryStateChanged(Landroid/view/Window;)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    .line 59
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->isBatteryCharging()Z

    move-result v0

    .line 60
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getBatteryLevel()F

    move-result v1

    .line 62
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isNoBatteryDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    const/high16 v1, 0x42c80000    # 100.0f

    :cond_1
    const/16 v2, 0x400

    if-nez v0, :cond_2

    float-to-double v0, v1

    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    cmpg-double v5, v0, v3

    if-gtz v5, :cond_2

    .line 68
    invoke-virtual {p0, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {p0, v2}, Landroid/view/Window;->addFlags(I)V

    :goto_0
    return-void
.end method
