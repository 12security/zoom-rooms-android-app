.class Lus/zoom/zrc/view/ZRCSearchView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ZRCSearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/ZRCSearchView;->cancelSearchAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/ZRCSearchView;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/ZRCSearchView;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCSearchView$3;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 170
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method
