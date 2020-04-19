.class public Lus/zoom/zrc/utils/PolycomTrioUtils;
.super Ljava/lang/Object;
.source "PolycomTrioUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setImmersiveModeForPolycomTrio(Landroid/app/Dialog;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 50
    :cond_0
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isRunInPolycomTrio()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 54
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0}, Lus/zoom/zrc/utils/PolycomTrioUtils;->setImmersiveModeForPolycomTrio(Landroid/view/Window;)V

    return-void
.end method

.method public static setImmersiveModeForPolycomTrio(Landroid/view/Window;)V
    .locals 2

    .line 16
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isRunInPolycomTrio()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    return-void

    .line 22
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 23
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v1, v1, 0x400

    or-int/lit16 v1, v1, 0x100

    or-int/lit8 v1, v1, 0x2

    or-int/lit8 v1, v1, 0x4

    or-int/lit16 v1, v1, 0x800

    or-int/lit16 v1, v1, 0x200

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 33
    new-instance v1, Lus/zoom/zrc/utils/PolycomTrioUtils$1;

    invoke-direct {v1, p0}, Lus/zoom/zrc/utils/PolycomTrioUtils$1;-><init>(Landroid/view/Window;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    :cond_2
    return-void
.end method

.method public static setImmersiveModeForPolycomTrio(Landroid/widget/PopupWindow;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 62
    :cond_0
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isRunInPolycomTrio()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 66
    :cond_1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 71
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 76
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_4

    .line 77
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit8 v1, v1, 0x2

    or-int/lit16 v1, v1, 0x800

    .line 81
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 82
    new-instance v1, Lus/zoom/zrc/utils/PolycomTrioUtils$2;

    invoke-direct {v1, p0}, Lus/zoom/zrc/utils/PolycomTrioUtils$2;-><init>(Landroid/widget/PopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    :cond_4
    return-void
.end method
