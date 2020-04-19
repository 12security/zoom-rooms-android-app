.class Lus/zoom/androidlib/util/ViewPressEffectHelper$ASetOnTouchListener;
.super Ljava/lang/Object;
.source "ViewPressEffectHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/util/ViewPressEffectHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ASetOnTouchListener"
.end annotation


# instance fields
.field final HALF_ALPHA:F

.field alphaOriginally:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f4ccccd    # 0.8f

    .line 22
    iput v0, p0, Lus/zoom/androidlib/util/ViewPressEffectHelper$ASetOnTouchListener;->HALF_ALPHA:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 23
    iput v0, p0, Lus/zoom/androidlib/util/ViewPressEffectHelper$ASetOnTouchListener;->alphaOriginally:F

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    iput p1, p0, Lus/zoom/androidlib/util/ViewPressEffectHelper$ASetOnTouchListener;->alphaOriginally:F

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 30
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const p2, 0x3f4ccccd    # 0.8f

    .line 32
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 37
    :cond_0
    :pswitch_1
    iget p2, p0, Lus/zoom/androidlib/util/ViewPressEffectHelper$ASetOnTouchListener;->alphaOriginally:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
