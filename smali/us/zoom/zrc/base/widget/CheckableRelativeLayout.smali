.class public Lus/zoom/zrc/base/widget/CheckableRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "CheckableRelativeLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private checked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    .line 14
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lus/zoom/zrc/base/widget/CheckableRelativeLayout;->CHECKED_STATE_SET:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100a0
        0x10102fe
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lus/zoom/zrc/base/widget/CheckableRelativeLayout;->checked:Z

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 1

    .line 57
    sget-object v0, Lus/zoom/zrc/base/widget/CheckableRelativeLayout;->CHECKED_STATE_SET:[I

    array-length v0, v0

    add-int/2addr p1, v0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 58
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/CheckableRelativeLayout;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lus/zoom/zrc/base/widget/CheckableRelativeLayout;->CHECKED_STATE_SET:[I

    invoke-static {p1, v0}, Lus/zoom/zrc/base/widget/CheckableRelativeLayout;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method public setChecked(Z)V
    .locals 1

    .line 38
    iget-boolean v0, p0, Lus/zoom/zrc/base/widget/CheckableRelativeLayout;->checked:Z

    if-eq v0, p1, :cond_0

    .line 39
    iput-boolean p1, p0, Lus/zoom/zrc/base/widget/CheckableRelativeLayout;->checked:Z

    .line 40
    invoke-static {p0, p1}, Lus/zoom/zrc/utils/ZRCAccessibilityUtils;->setSelectedForAccessibility(Landroid/view/View;Z)V

    .line 41
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/CheckableRelativeLayout;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 52
    iget-boolean v0, p0, Lus/zoom/zrc/base/widget/CheckableRelativeLayout;->checked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/widget/CheckableRelativeLayout;->setChecked(Z)V

    return-void
.end method
