.class public Lus/zoom/androidlib/util/ViewPressEffectHelper;
.super Ljava/lang/Object;
.source "ViewPressEffectHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/util/ViewPressEffectHelper$ASetOnTouchListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attach(Landroid/view/View;)V
    .locals 1

    .line 17
    new-instance v0, Lus/zoom/androidlib/util/ViewPressEffectHelper$ASetOnTouchListener;

    invoke-direct {v0, p0}, Lus/zoom/androidlib/util/ViewPressEffectHelper$ASetOnTouchListener;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
