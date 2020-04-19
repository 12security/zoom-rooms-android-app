.class Lus/zoom/zrc/control_system/ControlSystemContext;
.super Landroid/view/ContextThemeWrapper;
.source "ControlSystemContext.java"


# static fields
.field private static final attrs:[I


# instance fields
.field deviceHeadBottomLineColor:I

.field deviceListDividerColor:I

.field nameColor:I

.field paramColor:Landroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    .line 12
    new-array v0, v0, [I

    sget v1, Lus/zoom/zrcbox/R$attr;->controlSystemDeviceHeadBottomLineColor:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lus/zoom/zrcbox/R$attr;->controlSystemNameColor:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lus/zoom/zrcbox/R$attr;->controlSystemParamColor:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lus/zoom/zrcbox/R$attr;->controlSystemDeviceListDividerColor:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sput-object v0, Lus/zoom/zrc/control_system/ControlSystemContext;->attrs:[I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 23
    sget-object p1, Lus/zoom/zrc/control_system/ControlSystemContext;->attrs:[I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/control_system/ControlSystemContext;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 25
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lus/zoom/zrc/control_system/ControlSystemContext;->deviceHeadBottomLineColor:I

    const/4 v0, 0x1

    .line 26
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lus/zoom/zrc/control_system/ControlSystemContext;->nameColor:I

    const/4 v0, 0x2

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemContext;->paramColor:Landroid/content/res/ColorStateList;

    const/4 v0, 0x3

    .line 28
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lus/zoom/zrc/control_system/ControlSystemContext;->deviceListDividerColor:I

    .line 29
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
