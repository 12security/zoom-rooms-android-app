.class public Lus/zoom/zrc/base/widget/ZRCRepeatClickTrigger;
.super Ljava/lang/Object;
.source "ZRCRepeatClickTrigger.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Ljava/lang/Runnable;


# instance fields
.field private mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lus/zoom/zrc/base/widget/ZRCRepeatClickTrigger;->mView:Ljava/lang/ref/WeakReference;

    .line 19
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static handle(Landroid/view/View;)V
    .locals 1

    .line 84
    new-instance v0, Lus/zoom/zrc/base/widget/ZRCRepeatClickTrigger;

    invoke-direct {v0, p0}, Lus/zoom/zrc/base/widget/ZRCRepeatClickTrigger;-><init>(Landroid/view/View;)V

    return-void
.end method

.method private setPressed(Landroid/view/View;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 74
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setPressed(Z)V

    .line 75
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 76
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 77
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 78
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lus/zoom/zrc/base/widget/ZRCRepeatClickTrigger;->setPressed(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setPressed(Z)V
    .locals 1

    .line 65
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCRepeatClickTrigger;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 66
    invoke-direct {p0, v0, p1}, Lus/zoom/zrc/base/widget/ZRCRepeatClickTrigger;->setPressed(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 45
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 47
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 48
    invoke-direct {p0, v1}, Lus/zoom/zrc/base/widget/ZRCRepeatClickTrigger;->setPressed(Z)V

    const-wide/16 v2, 0x190

    .line 49
    invoke-virtual {p1, p0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    :pswitch_1
    const/4 p2, 0x0

    .line 53
    invoke-direct {p0, p2}, Lus/zoom/zrc/base/widget/ZRCRepeatClickTrigger;->setPressed(Z)V

    .line 54
    invoke-virtual {p1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 58
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-nez p2, :cond_1

    .line 59
    invoke-virtual {p1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public run()V
    .locals 3

    .line 24
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCRepeatClickTrigger;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 28
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 29
    invoke-direct {p0, v2}, Lus/zoom/zrc/base/widget/ZRCRepeatClickTrigger;->setPressed(Z)V

    .line 30
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void

    .line 33
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 34
    invoke-direct {p0, v2}, Lus/zoom/zrc/base/widget/ZRCRepeatClickTrigger;->setPressed(Z)V

    .line 35
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    const/4 v1, 0x1

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 39
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    const-wide/16 v1, 0x28

    .line 40
    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
