.class public Lus/zoom/zrc/base/widget/CheckableConstraintLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "CheckableConstraintLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 15
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lus/zoom/zrc/base/widget/CheckableConstraintLayout;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lus/zoom/zrc/base/widget/CheckableConstraintLayout;->mChecked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lus/zoom/zrc/base/widget/CheckableConstraintLayout;->mChecked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lus/zoom/zrc/base/widget/CheckableConstraintLayout;->mChecked:Z

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lus/zoom/zrc/base/widget/CheckableConstraintLayout;->mChecked:Z

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 48
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 49
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/CheckableConstraintLayout;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lus/zoom/zrc/base/widget/CheckableConstraintLayout;->CHECKED_STATE_SET:[I

    invoke-static {p1, v0}, Lus/zoom/zrc/base/widget/CheckableConstraintLayout;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method public setChecked(Z)V
    .locals 1

    .line 36
    iget-boolean v0, p0, Lus/zoom/zrc/base/widget/CheckableConstraintLayout;->mChecked:Z

    if-eq p1, v0, :cond_0

    .line 37
    iput-boolean p1, p0, Lus/zoom/zrc/base/widget/CheckableConstraintLayout;->mChecked:Z

    .line 38
    invoke-virtual {p0}, Lus/zoom/zrc/base/widget/CheckableConstraintLayout;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 43
    iget-boolean v0, p0, Lus/zoom/zrc/base/widget/CheckableConstraintLayout;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/widget/CheckableConstraintLayout;->setChecked(Z)V

    return-void
.end method
